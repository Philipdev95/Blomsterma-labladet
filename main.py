# *-* coding: utf-8 *-*
import MySQLdb
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
