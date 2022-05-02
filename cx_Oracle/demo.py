import cx_Oracle

conStr = 'system/system@localhost:1521/xe'

# con = cx_Oracle.connect(
#     user = "system",
#     password = "system",
#     dsn = "localhost/xe",
# )

conn = cx_Oracle.connect(conStr)

cur = conn.cursor()

cur.close()
conn.close()