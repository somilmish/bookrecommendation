#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Apr 30 22:42:59 2018

@author: sid
"""

import json
j = json.load(open('sample.json.bak'))

import pandas as pd
books = pd.read_csv('bookedit.csv')
books_c = books.dropna(subset=['original_title'])
b_rows = books_c.iloc[:,1]

c = []
for key in j:
    for item in range(len(j[key])):
        book_id = int(j[key][item])
        if (b_rows == book_id).any():
            continue
        else:
            print(book_id)
            c.append(book_id)
c = list(set(c)

        
            
            
    