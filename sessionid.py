#!/usr/bin/python

# This file parses the sessionid out of the hidden input it is inside on wilma's main page

idline = input()
print(idline.split('value="')[1].split('"')[0])
