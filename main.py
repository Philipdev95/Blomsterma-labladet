# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect, static_file

db = MySQLdb.connect(host="195.178.232.16", user="af8473", db="af8473", passwd="Admin12345", charset="utf8")
cursor = db.cursor()
    
@route("/")
def print_puff():
    cursor.execute("select distinct ArtID, Rubrik, Ingress from artiklar")
    puffar = cursor.fetchall()
    puff_list = []
    for row in puffar:
        for item in row:
            puff_list.append(item)
    menu = show_menu()
    allameny = all_categories(menu)
    return template("start.tpl", puffar = puff_list, huvudkategori = menu, allakategori = allameny)

@route("/<artikelnamn>")
def article(artikelnamn):
    cursor.execute("select Rubrik, Datum, Ingress, Brodtext, forfattare from Artiklar where ArtID ='" + artikelnamn + "'")
    menu = show_menu()
    allameny = all_categories(menu)
    artiklar = cursor.fetchall()
    article_list = []
    for row in artiklar:
        for item in row:
            article_list.append(item)
    return template("article", huvudkategori = menu, allakategori = allameny, article = article_list)

@route("/kategori/<underkategori>")
def underkategorier(underkategori):
    cursor.execute("select UKnamn from underkategori where UKnamn ='" + underkategori + "'")
    kategori_namn = cursor.fetchall()
    menu = show_menu()
    allamenu = all_categories(menu)
    UK_list = []
    for UK in underkategori:
        for i in UK:
            UK_list.append(i)
    return template("category", huvudkategori = menu, allakategori = allamenu, kategori_namn = kategori_namn)
    
def show_menu():
    cursor.execute("select distinct Kategori from underkategori")
    menu_categories = cursor.fetchall()
    category_list = []
    for kategori in menu_categories:
        for item in kategori:
            category_list.append(item)
    return category_list
        
def all_categories(menu):
    allkat_list = []
    for huvud in menu:
        cursor.execute("select distinct UKnamn from underkategori where Kategori='" + huvud + "'")
        print huvud
        allkat_list.append(huvud)
        allakategorier = cursor.fetchall()
        for UKnamn in allakategorier:
            for item in UKnamn:
                allkat_list.append(item)
                print item
    return allkat_list


@route('/static/<filepath:path>')
def css(filepath):
    return static_file(filepath, root='static')


run(host='localhost', port=8080, debug=True)
