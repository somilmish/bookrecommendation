from home.models import Books,Genres
import pandas as pd
import xml.etree.ElementTree as ET
#x = pd.read_csv('result.csv')
#y = x.iloc[:,2]
books = pd.read_csv('bookedit.csv')
books_c = books.dropna(subset=['original_title'])
b = books_c.iloc[:,[1,7,9,12,21]]
#nan_rows = b[b['original_title'].isnull()].iloc[:,0]


import json
j = json.load(open('sample.json.bak'))
k = 0
id = 6138
for key in j:
	#print("key->"+key)
    for item in range(len(j[key])):
        print(k)
        k += 1
        book_id = int(j[key][item])
        # book_name = b[b['goodreads_book_id'] == book_id]['original_title'].values[0]
        # author_name = b[b['goodreads_book_id'] == book_id]['authors'].values[0]
        # average_rating =  b[b['goodreads_book_id'] == book_id]['average_rating'].values[0]
        # image_url = b[b['goodreads_book_id'] == book_id]['image_url'].values[0]
        xml = ET.parse(
			"C:/Users/sinsi/MachineLearning/goodbooks-10k-master/books_xml/books_xml/books_xml/" + str(book_id) + '.xml')
        root = xml.getroot()
        sumr = root[1][16].text
        book = Books.objects.get(pk=id)
        book.summary = sumr
        book.save()
        id = id+1