import mysql.connector

mydb = mysql.connector.connect(host="localhost", port=3306, user="root", passwd="Hayan12!@", auth_plugin='mysql_native_password')

mycursor = mydb.cursor()

mycursor.execute("show databases")

for i in mycursor:
	print(i)

'''You can print the schema databases by defining the for loop in a class '''

# class tabdata:
# 	def cursor(self):
# 		for i in mycursor:
# 			print(i)

# c1 = tabdata()
# c1.cursor()