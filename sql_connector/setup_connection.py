import mysql.connector as mysql

mydb = mysql.connect(
    host = "localhost",
    user = "root",
    password = "Hayan12!@",
    auth_plugin="mysql_native_password",   #If there is an authentication error i.e sha2 error
)

print(mydb)
print("Successfully Connected to mysql workbench !!!")