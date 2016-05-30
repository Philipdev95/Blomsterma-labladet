# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect

db = MySQLdb.connect(host="localhost", user="root", passwd="hejhej123", db="projekt", charset="utf8")
cursor = db.cursor()

    
@route("/")
def print_puff():
    cursor.execute("select Rubrik, Ingress from artiklar")
    puffar = cursor.fetchall()
    puff_list = []
    for row in puffar:
        for item in row:
            puff_list.append(item)
    menu = show_menu()
    submenu = show_subcategories(menu)
    return template("start", kategori = menu, underkategori = submenu)

@route("/article/")
def article():
    cursor.execute("select Rubrik, Datum, Forfattare, Ingress, Brodtext")
    artiklar = cursor.fetchall()
    article_list = []
    for row in artiklar:
        for item in row:
            article_list.append(item)
    return template("article")

def show_menu():
    cursor.execute("select distinct Kategori from underkategori")
    menu_categories = cursor.fetchall()
    category_list = []
    for kategori in menu_categories:
        category_list.append(kategori)
    return category_list
        
def show_subcategories(subcategories):
    cursor.execute("select UKnamn from underkategori")
    subcategories = cursor.fetchall
    subcategory_list = []
    for UKnamn in subcategories:
        subcategory_list.append(UKnamn)
    return subcategory_list

@route('<main:re:.*\.css>',name='static')
def css(main):
    print "css:",main
    return static_file(main,root='./static',mimetype='text/css')
    

run(host='localhost', port=8080)

#Lägga till så att artiklarna får främmande nyckel till underkategori i databasen
