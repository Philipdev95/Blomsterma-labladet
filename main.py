# *-* coding: utf-8 *-*
import MySQLdb
import bottle
from bottle import route, get, post, run, template, error, static_file, request, redirect, abort, response, app
# connect
db = MySQLdb.connect(host="localhost", user="root", passwd="abcd1234", db="projekt", charset="utf8")
# create a cursor
cursor = db.cursor()
# execute SQL statement
cursor.execute("select Rubrik, Datum, Författare, Artikeltext from Artiklar")
# get the resultset as a tuple
result = cursor.fetchall()
# iterate through resultset
for record in result:
	print record[0] , record[1], record[2], record[3]

@route("/")
def start():
    return template("start")
