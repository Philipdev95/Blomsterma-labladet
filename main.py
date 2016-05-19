# *-* coding: utf-8 *-*
import MySQLdb
# connect
db = MySQLdb.connect(host="localhost", user="root", passwd="abcd1234", db="af9121", charset="utf8")
# create a cursor
cursor = db.cursor()
# execute SQL statement
cursor.execute("select Namn, Medlemsnr from Medlem")
# get the resultset as a tuple
result = cursor.fetchall()
# iterate through resultset
for record in result:
	print record[0] , "har medlemsnummer", record[1]
