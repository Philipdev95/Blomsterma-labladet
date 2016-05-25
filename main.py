# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect

db = MySQLdb.connect(host="localhost", user="root", passwd="hejhej123", db="projekt", charset="utf8")
cursor = db.cursor()

    
@route("/")
def print_puff():
    cursor.execute("select Rubrik, Ingress from Artiklar limit 10")
    result = cursor.fetchall()
    for record in result:
        print record[0], record[1]
    return template("start")

@route('<main:re:.*\.css>',name='static')
def css(main):
    print "css:",main
    return static_file(main,root='./static',mimetype='text/css')
    
run(host='localhost', port=8080)

