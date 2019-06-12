import pymysql

conn = pymysql.connect(host="192.168.56.106", user="root", password="1234", db="mission03", charset="utf8")
cur = conn.cursor()
cur.execute("SELECT * FROM missionTable")

print("사번\t이름\t입사연도")
print("-------------------")
while True:
    data = cur.fetchone()
    if data == None: break
    id = data[0]
    name = data[1]
    year = data[2]
    print("{}\t{}\t{}".format(id,name,year))

print("-------------------")
cur.close()
conn.close()

print('OK')