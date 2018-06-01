from django.shortcuts import render, redirect
from .models import *
from django.contrib.auth import authenticate ,login,logout
from django.contrib.auth.models import User
from datetime import date
# Create your views here.


def home(request):
    if request.method=='GET':
        daily_users = User.objects.filter(date_joined__contains=date.today()).count()
        return render(request,'home/home.html',{'users':daily_users})





def register(request):
    if request.method=='GET':
        return render(request,'home/home.html')
    else:
        name = request.POST['name']
        username = request.POST['uname']
        email = request.POST['email']
        password = request.POST['password']
        if name and username and email and password:
            if not User.objects.filter(username=username).exists():
                user = User.objects.create_user(first_name=name,
                                                username=username,
                                                email=email,
                                                password=password)
                u = authenticate(username=username, password=password)
                if u is not None:
                    print("authenticated")
                    login(request, u)

                request.session['id'] = user.id
                return redirect('user')
        else:
            redirect('/')

def login_view(request):
    if request.method=='GET':
        if 'id' in request.session:
            return redirect('user')
        return render(request,'home/login.html')

    else:
        username = request.POST['uname']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                print("user active")
                login(request, user)
                request.session['id'] = User.objects.filter(username=username).values('id')[0]['id']
                return redirect('user')
            else:
                return render(request, 'home/home.html')
        else:
            return redirect('/')

def user(request):
    if request.method=='GET':
        try:
            uid = request.GET['id']
        except:
            uid = request.session['id']
        #print(uid)
        user = User.objects.get(pk=int(uid))
        #print(user.username)
        genre = Genres.objects.all()
        fbook = UserBook.objects.filter(user=user)
        genre_list = []
        for i in fbook:
            if i.book.genre.id in genre_list:
                pass
            else:
                genre_list.append(i.book.genre.id)
        if len(genre_list)!=0:
            number = 5//len(genre_list)
            isselected = 1
            recbook = set()
            for i in genre_list:
                book = Books.objects.filter(genre=int(i)).order_by('-rating')
                while len(recbook)<5:
                    if len(book)>=number:
                        for k in range(0,number):
                            recbook.add(book[k])
                    else:
                        for k in range(0,len(book)):
                            recbook.add(book[k])
                    break
        else:
            isselected = 0
            recbook  =""
        return render(request,'home/user.html',{'user':user,'genre':genre,"fbook":fbook,'recbook':recbook,'isset':isselected})
    else:
        user = User.objects.get(pk=int(request.session['id']))
        book = request.POST['book']
        userbook = UserBook(
            user = user,
            book=Books.objects.get(pk=int(book))
        )
        userbook.save()
        return redirect('user')

def genre(request):
    if request.method=='GET':
        id = request.GET['id']
        books = Books.objects.filter(genre=id)
        return render(request,'home/genre.html',{'books':books,})

def book(request):
    if request.method=='GET':
        id = request.GET['id']
        book = Books.objects.get(pk=(int(id)))
        if UserBook.objects.filter(user=User.objects.get(pk=int(request.session['id'])),book=book).exists():
            follow = 1
        else:
            follow = 0
        comment = UserCommentBook.objects.filter(book=book)
        return render(request, 'home/book.html',{'book':book,'comment':comment,'follow':follow})
    else:
        comment = request.POST['comment']
        book = request.POST['id']
        comment = UserCommentBook(
            user = User.objects.get(pk=int(request.session['id'])),
            book = Books.objects.get(pk=int(book)),
            comment=comment,
        )
        comment.save()
        return redirect('book/?id='+str(book))

def logout_view(request):
    logout(request)
    return redirect('/')