import mysql.connector as mysql

mydb = mysql.connect(
    host = "localhost",
    user = "root",
    password = "Hayan12!@",
    auth_plugin = "mysql_native_password",
    database = "cannibals",
)

my_cursor = mydb.cursor()

add_data = "INSERT INTO users(name, email, age, phone) VALUES(%s, %s, %s, %s)"
record1 = ("john", "john369@gmail.com", 22, 7849856)

my_cursor.execute(add_data, record1)

mydb.commit()
