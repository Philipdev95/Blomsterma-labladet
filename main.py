# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect

db = MySQLdb.connect(host="localhost", user="root", passwd="abcd1234", db="projekt", charset="utf8")
cursor = db.cursor()

    
@route("/")
def print_puff():
    cursor.execute("select Rubrik, Ingress from Artiklar limit 10")
    result = cursor.fetchall()
    for record in result:
	print record[0], record[3]
    return template("start")

@route('<main:re:.*\.css>',name='static')
def css(main):
    print "css:",main
    return static_file(main,root='./static',mimetype='text/css')
    
<<<<<<< HEAD

=======
@route("/")
def start():
    return template("start")
>>>>>>> origin/TPL

@route("/article/")
def article():
    return template("article")


run(host='localhost', port=8080)