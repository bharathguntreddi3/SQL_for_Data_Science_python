import mysql.connector
import sqllite3
mydb = mysql.connector.connect(host="localhost", user="root", passwd="Hayan12!@", port=3306, auth_plugin="mysql_native_password", database="sql_hr")
mycursor = mydb.cursor()
mycursor.execute("show tables")
for i in mycursor:
	print(i)

