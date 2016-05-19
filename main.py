# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, run, template, Bottle, request, redirect
# connect
db = MySQLdb.connect(host="127.0.0.1", user="root", passwd="abcd1234", db="projekt", charset="utf8")
# create a cursor
cursor = db.cursor()
# execute SQL statement
cursor.execute("select Rubrik, Datum, Författare, Artikeltext from Artiklar")
# get the resultset as a tuple
result = cursor.fetchall()
# iterate through resultset
for record in result:
	print record[0] , record[1], record[2], record[3]

@route('<main:re:.*\.css>',name='static')
def css(main):
    print "css:",main
    return static_file(main,root='./static',mimetype='text/css')
    
    
@route("/")
def start():
    return template("start")

run(host='127.0.0.1', port=8080)

