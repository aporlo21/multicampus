import sqlite3

conn = sqlite3.connect(host="192.168.56.101", user="root", password="1234", db="mission08", charset="utf8")  # 1. DB 연결

cur = conn.cursor() # 2. 커서 생성 (트럭, 연결로프)
sql = "SELECT * FROM member1Table"
cur.execute(sql)

row = cur.fetchone()

print(row)
