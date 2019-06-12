import pymysql

## 함수 선언부 ##

## 변수 선언부 ##
# db정보
host = "192.168.56.106"
user = "hojin"
password = ""
db = "mission03"
charset = "utf8"

## 메인 코드부 ##
if __name__ == "__main__":
    conn = pymysql.connect(host=host, user="hojin", password="", db=db, charset=charset) # db 접속
    cur = conn.cursor() # cursor 생성

    sql = "SELECT * from missionTable" # select 쿼리문
    cur.execute(sql) # select 쿼리문 실행

    print("%-7s%-7s%-7s" % ("사번", "이름", "입사연도")) # -7은 왼쪽정렬하면서 7칸을 확보합니다.
    print("------------------------------------")

    while True:
        row = cur.fetchone()
        if row == None: # fetchone()했을 때, 끝까지 도달하면 None을 리턴합니다.
            break
        print("%-7d%-7s%-7d" % (row[0], row[1], row[2]))

    print("------------------------------------")

    cur.close()
    conn.commit()

    conn.close()