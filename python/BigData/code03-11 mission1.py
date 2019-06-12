import pymysql

conn = pymysql.connect(host="192.168.56.106", user="root", password="password", db="mission03", charset="utf8")

while True:
    cur = conn.cursor()
    id = int(input("사번-->"))
    if(id==0) : break
    name = "\""+input("이름-->")+"\""
    year = int(input("입사연도-->"))
    sql = "insert into missionTable values({}, {}, {})".format(id,name,year)
    print(sql)
    cur.execute(sql)
    cur.close()

conn.commit()
conn.close() # 6. DB 닫기

print('OK')
