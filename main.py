# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect, static_file

#db = MySQLdb.connect(host="195.178.232.16", user="af8473", db="af8473", passwd="Admin12345", charset="utf8")
db = MySQLdb.connect(host="localhost", user="root", db="projekt", passwd="hejhej123", charset="utf8")
cursor = db.cursor()
    
@route("/")
def print_puff():
    cursor.execute("select ArtID, Rubrik, Ingress from artiklar limit 4")
    puffar = cursor.fetchall()
    menu = show_menu()
    allameny = all_categories(menu)
    return template("start.tpl", puffar = puffar, huvudkategori = menu, allakategori = allameny)

@route("/<artikelnamn>")
def article(artikelnamn):
    cursor.execute("select Rubrik, Datum, Ingress, Brodtext, Forfattare, ArtID from Artiklar where ArtID ='" + artikelnamn + "'")
    artiklar = cursor.fetchall()
    cursor.execute("select kommentar.Kommentarforfattare, kommentar.Kommentar from kommentar where kommentar.ArtID ='" + artikelnamn + "'")
    kommentarer = cursor.fetchall()
    menu = show_menu()
    allameny = all_categories(menu)
    return template("article", kommentarer = kommentarer, huvudkategori = menu, allakategori = allameny, article = artiklar)

@route("/comment/<ArtID>", method = "POST")
def comment(ArtID):
    comment_author = request.forms.get("author")
    comment_text = request.forms.get("comment_text")
    cursor.execute("""insert into kommentar (Kommentar, Kommentarforfattare, ArtID) values('{}', '{}','{}')""".format(comment_text, comment_author, ArtID))
    db.commit()
    redirect("/" + ArtID)

@route("/kategori/<underkategori>")
def underkategorier(underkategori):
    cursor.execute("select artiklar.artID, artiklar.Rubrik, artiklar.Ingress from artiklar inner join underkategori on artiklar.underkategori = underkategori.IDnr where underkategori.UKnamn ='" + underkategori + "'")
    puffar = cursor.fetchall()
    cursor.execute("select distinct UKnamn from underkategori where underkategori.UKnamn ='" + underkategori + "'")
    kategori_namn = cursor.fetchall()
    name_list = []
    for row in kategori_namn:
        for item in row:
            name_list.append(item)
    menu = show_menu()
    allamenu = all_categories(menu)
    return template("category", puffar = puffar, huvudkategori = menu, allakategori = allamenu, kategori_namn = name_list)
    
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
        allkat_list.append(huvud)
        allakategorier = cursor.fetchall()
        for UKnamn in allakategorier:
            for item in UKnamn:
                allkat_list.append(item)
    return allkat_list


@route('/static/<filepath:path>')
def css(filepath):
    return static_file(filepath, root='static')


run(host='localhost', port=8080, debug=True)
