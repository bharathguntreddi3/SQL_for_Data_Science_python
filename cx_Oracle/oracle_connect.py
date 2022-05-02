import cx_Oracle

userpwd = ". . ." # Obtain password string from a user prompt or environment variable

connection = cx_Oracle.connect(user="system", password=userpwd, encoding="UTF-8")