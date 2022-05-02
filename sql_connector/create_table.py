import mysql.connector as mysql
mydb = mysql.connect(
    host = "localhost",
    user = "root",
    password = "Hayan12!@",
    auth_plugin = "mysql_native_password",
    database = "cannibals",
)

my_cursor = mydb.cursor()

my_cursor.execute("CREATE TABLE users(name VARCHAR(20), email VARCHAR(30), age INTEGER(3), phone INTEGER(10), id INTEGER AUTO_INCREMENT PRIMARY KEY)")
my_cursor.execute("SHOW TABLES")
for table in my_cursor:
    print(table)

print("BOOM !!  Table Successfully Created!!!")