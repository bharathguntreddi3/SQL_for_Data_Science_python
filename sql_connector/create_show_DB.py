import mysql.connector as mysql

mydb = mysql.connect(
    host = "localhost",
    user = "root",
    password = "Hayan12!@",
    auth_plugin="mysql_native_password",   #If there is an authentication error i.e sha2 error
)

my_cursor = mydb.cursor()

# my_cursor.execute("CREATE DATABASE cannibals")
print("DATABASES LIST :")
my_cursor.execute("SHOW DATABASES")
for db in my_cursor:
    print(db[0])
print(my_cursor)