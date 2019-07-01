# 2nd day for Prof. woo

1.  H/W

hdd : 속도 rpm ( 10000, 7200, 4xxx ) = 너무 빠르면 튄다  // disk는 백업을 자주

ssd : m.2, 256GB

2. S/W 

OS ( UNIX, LINUX, WINDOWS ) 

32bit ) x86, i386, i586, x32

64bit ) x64m x86_AMD64

3.  Virtual Box ==> Fedora22 (mySQL 5.7)

Window SErver 2016 (Maria DB 10.4 RC SQL Server 2019 CTP)

3. 

NT kernal upgrade)

FAT 16 / FAT 32( old method ) : File Allocating Table

NTFS(표준) NT File System



외부에서 DB서버에 접속하기 

(1) MariaDB ==> root가 외부에서 접속?, 방화벽 등록? 

서버컴 (식단 / 제공자 ) <=> 클라이언트 컴 (손님 / 요청자)

![](C:\Users\user\hojin\python\pic\client vs server .png)

mysql -- 3306 (default) .. webserver -- 40 (일반식당) // db( 보안이중요해)

client 입장에서는 대문을 열어야한다 (-> port 여는 프로그램 | 방화벽 )
port number - 식당주소 

Program : 집에 있어? - 하드에 저장되어있기에 비휘발성 /// 메모리로 가져와서 실행하는것 (process ... program 잠자는 상태를 활성화시켜서 띄워놓는 개념 용어)

프로그램은 1 지만 프로세스는 여러개 

프로세스 id : cpu가 번호통에서 골라 선택하므로 겹칠 일이 없다 

background : 실행은 했으나 비가시적인 것 *( 대부분 service program 개념) // (sql  / maria db)

 foreground : 눈에 보이는 프로그램 ㅣ 한컴 

2) SQL Server ( db 가져와서 sql 서버 접속 )

- port 허용 1433
- 인증 모드 변경 windows 
- sa 사용자 허용
- tcp(인터넷) 를 통해서 접속허용 (=ip주소를 통해 )

sa - system adminstrator

sysadmin - 최고 상위

grant - 허용

ram - 메모리상의 sql server 

권한 - 한개 한개 개별적인 권한 // 읽기쓰기 권한 // 역할 (role) 일반직원의 각각의 역할지정 - 회사업무가

파이썬을 실행 하는 환경 idle

new file - memo장과 기능 같아 

* 스크립트 모델에서 입력하고 대화형 모델에서 출력 

파이썬 선 설치후 파이참 설치 

ctrl shift f10



Linux - mySQL( host - only )

WS - SQL, Mariadb

장치 네트워크 - 네트워크 설정 => 네트워크 연결



Mission // (2일차)

Windows Server 2019 ISO 파일 다운로드 

SQL Server 2017 Express 다운로드 

MySQL 8.0 x 다운로드 

-----------자신이 정리한 내용을 확인하면서 진행하세요 ------

(1) Virtual Box 에 Win 2019 설치하고 설정 ---> 스냅숏 으로저장

(2) Win2019 에 SQL 2017, MySQL 8.0을 설치하고 설정 ---> 스냅숏

(3) Win2019에 Python 3.6과 PyCharm 설치후 Hello World 작성 ----> 스냅숏

(4) PC 의 HeidiSQL 에서 SQL 2017, MySQL 8.0에 접속



공유폴더 설정

c:\ download  

amd64

ms sql : 1433 (port number)

my sql : 3306



sql문 = 쿼리

db를 공부하고 싶다면 db를 만들어봐라 한번 그럼 공부 효과 굿굿



3일차

퀴즈 1 windows server 의 mariadb 또는 mysql에 p423구현하기 

퀴즈 2 sql server 에 p423 구현하기 

입력한 돈을 쵀최소한의 지폐 동전 까지 바꾸기

테이블 삭제 ㅣ DROP TABLE

테이블 변경  ㅣ ALTER TABLE

import 

db연동 파이썬 ... 

m 상태 

datatype : 숫자 문자 

정수 (integer )



시릅(float0)

% 구분자 뒤의 인자와 쌍이 맞아야한다 

a = b = 200 =c 

c ( left value : 변수만 올수있다 ) = right value 상수

1. 주석을 많이 달아라
2. 범용적으로 짜랑 ㅏ
3. 세미콜론 // 줄바꿈

if & for 조건문 & 반복문이 중요 

