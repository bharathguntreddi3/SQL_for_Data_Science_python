# import MySQLdb as sql_db

import mysql.connector   #pip install mysql-connector-python and import the connector

mydb = mysql.connector.connect(host="localhost", port=3306, user="root", passwd="Hayan12!@")    #connect to the database

# auth_plugin="mysql_native_password"   - If any error occured while connecting to db

print("Hey! successfully connected to mysql database")

mycursor = mydb.cursor()      #create a curser which points you to the databases and enables you to create and alter

print("Databases List : ")

mycursor.execute("show databases")     #shows the dataabase

# for i in mycursor:
#     print(i)
    
'''You can access the schema databases using the class and a method that defines the cursor and print the loop'''

'''OR'''

'''just you can print it by a simple for loop'''

class cursor:
    def tabdata(self):
        for i in mycursor:
            print(i)

c1 = cursor()
c1.tabdata()