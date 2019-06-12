import pymysql

conn = pymysql.connect("samsongDB") # 1. DB 연결
cur = conn.cursor() # 2. 커서생성 (트럭, 연결로프)
sql = "SELECT * FROM userTable"
cur.execute(sql) # cur (커서 - 트럭)

rows = cur.fetchall()
print(rows)

cur.close()
conn.commit()
conn.close() # 6. DB 닫기 (연결해제)
print('OK~')
