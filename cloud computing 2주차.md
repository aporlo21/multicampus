# Module 2 ( 10979 )

Azure PowerShell

GUI는 한계를 지니고있다. 단순하게 관리시 GUI 환경을 사용하고

Powershell or CLI - 대량관리시 필요

한번의 관리작업으로 많은 관리를 할시 & 자동화할 때 Powershell &CLI를 사용하여 배포한다.

스크립트화 해놓으면 블록잡고 실행하면된다( 자동화 가능)



# POWERSHELL

Window 2008에서 소개 되어 windows powershell ise ( GUI )환경으로 되어 Script 생성 (by powershell ISE) 이 가능하다. 

PowerShell console - 간단한 작업시

Visual Studio - Powersheel Tool 

Powershell module / Powershell 명령어들의 집합 

$ : 변수를 의미하며, $ (변수명) = 값

변수는 메모리에 잠깐 올라갔다가 없어지는 값



azure PowerShell Module 

로컬에서 작업시, 모듈을 설치하고 인포트 해줘야 power shell모듈 사용이 가능하지만

POWER Shell Cloud를 통해 사용이 가능

Powershellget ( windows, linux, macOS )에서도 파워쉘통한 관리가 가능하다. 

AZURE Module을 등록해야한다. 



ARM 

1. Powershell을 통해 프로그램 사용이 가능토록 인증을 해야한다.

명령어 : 동사 - 명사 

- 

AZURE CLI

* CLI 1.0 - ARM / Classic 지원
* CLI 2.0 - ARM ONLY
* WINDOWS LINUX MAC OS 설치되어진다.

인증 받기 ( Azure login, az login )

장치 인증 ( azure config mode arm / asm - classic )



# Powershell



** ctrl + 관리자로 실행**

shift + enter or 마우스 우클릭 : 복사

TAB : 명령어 검색 / 오타방지기능 

| (하이퍼 옵션) : 동사 | 명사 // 명령어를 끊어 출력시켜라 

spacebar : 한 페이지 씩

enter : 한 줄씩

cls : 화면을 지워라 (클리어)

get-help / get-process : 명령어들의 help파일 참조? + 명령어 // HELP파일 Update

get-process : 작업관리자 영역 현황

add-azureAccount / connect-AzureRMAccount : 실행이 되지않을시. azure power shell module 이 등록되지않음 



ISE : script / console 창

전체 실행 ( F5 )

블록잡고 선택영역 실행 ( F8 )

확장자 .ps1

#( 주석) 은 실행되지 않는 부분

get-module ( 하이푼 )

powershell 실행정책 5가지 

Get-ExecutionPolicy : powershell 

Restricted : .ps1파일 제한

unrestricted : 5가지중 보안권한 가진자만 접근 가능. 



<https://azure.microsoft.com/en-us/downloads/> powershell 명령어 검색

Get-AzSubscription : 하나의 id 당 sub가 여러개 등록시 선택한 후 

Select-AzSubscription -Subscription <Subscription ID> 

- 관리자로써 특정 ID를 선택해서 확인해야함

레포지토리 - 모듈이 저장된공간

PSgallery - Powershell Gallery

데이터센터의 엔지니어 한명이 서버 2만대를 관리하고 있다. with azure CLI, azure Powershell



# CLI

명령 프롬프트 로 실행한다

명령 프롬프트 관리자권한으로 실행



* **Local에서 접속하기**

az

az login => 인터넷으로 연결 // subscription 정보 출력

portal.azure.com // cloud shell - powershell or CLI 사용가능

az account list => subscription 출력

az account set --subscription : subscription 선택



* **cloud shell 에서 접속하기** 

Connect-AzureRmAcoount

해당 홈페이지가서 

H3X8CAS52 (16진수 헥사코드)

Get-AzureRmSubscription

select-AzureRmSubscription -Subscription (ID)



exercise ) 20533E_LAB_AK_02.md

East.US



**- Peering** 

 "East US"

다른 데이터 센터 내에서는 vnet to vnet 기능

같은 데이터 센터에서,, peering 기능을 통해 서브 네트워크 끼리는 라우터 없이 라우팅기능을 제공해준다. 

vnet 과 vnet 사이에는 라우터가 반드시 필요하다. 

VPN과 같이 Vnet간의 peering을 설정해주면 바로바로 상호간 교류가 가능해진다. 

LAB B : 0203-vent

3,4 peering

2 => 4. 

exercise 2 ) **20533E0203**  3번 서브넷에 2019

첫번째 vm 에 닉을 선택



define router 

2016 vm 생성 

Networkcard - ip / ws2019 & ws2019545 - network interface(LAN card)

ws2019 nsg생성

peering resource group / vrtual network / subnets/ peering setting add 

방화벽통해 안쪽 VN 과 결속

공인 IP가 사설 IP로 

Storage (disk) 가 별도의 서비스로 vn과 결부되어져서 나온다. 

ws2019545 - forwarding settign enabled => peering // ip configuration 



- 가상스위치 구성

Private Network



# Review

Powershelll textfile. 5일차 

Powershelll textfile. 6일차 

---

![](C:\Users\user\Desktop\hojin\Plus File\Comparing Azure SQL Database with SQL Server.png)

VM : VN이 반드시 필요함

SQL Server 의 인증모드 : 

ID + PASSWORD = Credential 

도메인 밖에서는 인증이 안된다. 

- back up의 type

전체 백업 (일주일에 한번)

증분 백업 - Differential Backup (매일 한번)

Incremetal (5분에 한번 로그 기록)

collation - 데이터 정렬방식 (대, 소문자 구분 결정)





SQL authentication = SQL 서버 인증

SA = SQL // 최고 관리자 계정



# 10979 MODULE 4, 20533 MODULE 5

IaaS 환경의 Web Service

- 서버장비 구매, os설치, IIS설치

  

  1. ISS(Internet Information Service) 설치

  - Web server (TCP 80)

  : 웹 페이지를 클라이언트에게 전송. htm, .html 확장자 => 정적 페이지

  클라이언트가 웹서버에게 웹페이지를 요청. 80번 포트(기본) 를 통해 접속, 

  인터넷 익스플로어 : 웹브라우저 ie. edge 크롬-google /firefox - Linux / safari - apple

  - **FTP** Server (**TCP 21**)

  

  Role vs Feature

  Role - server service (16), web server (15)

  Feature - 기능(fuction) (35)

  Web Server Home Directory

  = %SystemDrive%\inetpub\wwwroot

  Default Document(기본 문서)

  * 클라이언트가 요청하면 서버는 클라이언트에게 서버에서 해석을 하고 난 결과코드를 보내준다. 원본 페이지를 볼수 없이 결과값을 수신받는 클라이언트 브라우저

  Index.htm, index,html, default.htm, default.html, default.asp

  * 동적 페이지 - 확장자 .asp / .net / java / node js (hot) = DB를 Connetion : 이런 언어를 통해 응답형 페이지를 만든다. 반응형 웹페이지 를 만들수 있다 . htm, html 정적 페이지 ( 정보 보여주기 식 )

  

  window server OS 위에  - WEB server (TCP 80) or Domain Center or DNS (사용자 과다시), UDP 53 TCP 53 OR UDP 67,68 DHCP Server

  SQL - 윈도우 요소 아니므로 따로 설치. 

  사용자 적을시, 각각에 할당분할가능 

  Client : 서비스 요청하는 측

  Server : 서버측에서 서비스 제공함

  

  2. Linux ( CentOS 7.6)

  1. APM ( Apache , PHP, **MySQL**(MariaDB) - Oracle/AWS/Azure)

- ssh student@chj-linux.eastus.cloudapp.azure.com

- $ : Linux server login 완료

- ping 8.8.8.8

  $ sudo yum install httpd php php-mysql php-pod php-gd php-mbsting mariadb mariadb-server:(server)  

- ctrl + c : 실행 취소 명령어

- ctrl + v . 마우스 우클릭 : 복 붙 (명령프롬프트 상에서)

- $ rpm -qa mariadb-server : mariadb = my SQL - 이름변경됨

  2. 서비스 자동 등록

  $ sudo : 관리 권한을 실행 해라 

  $ sudo systemctl enable httpd

  $ sudo systemctl enable mariadb

  3. 서비스 시작

  $ sudo systemctl start httpd

  $ sudo systemctl start mariadbsudo sys

  * 상태 확인  : $ sudo systemctl status httpd

  4. 방화벽 시작

  $ sudo systemctl enable firewalld

  $ sudo systemctl start firewalld

  5. 방화벽

  $ sudo firewall-cmd --permanent --add-port=80/tcp

  $ sudo firewall-cmd --permanent --add-port=21/tcp

  $ sudo firewall-cmd --permanent --add-port=3306/tcp

  $ sudo firewall-cmd --reload

  $ sudo firewall-cmd --list-ports

  6. 웹서버 설정 파일 (httpd.conf) : /etc/httpd/conf/http/conf

  $ sudo find / -name httpd.conf | more

   /etc/httpd/conf/http/conf

  $ sudo cat -n /etc/httpd/conf/httpd.conf | grep DocumentRoot DirectoryIndex

  119 DocumentRoot "/var/www/html"

  $ sudo cat -n /etc/httpd/conf/httpd.conf | grep DirectoryIndex

  164 DirectoryIndex index.html

  $ sudo vi /var/www/html/index.html

- vi : 메모장과같은 에디터

  $ cat /var/www/html/index.html

  

  Linux Web Server Test ~~~ ( IN apache website ) 출력

7. PHP 작동

   $ sudo vi /var/www/html/phpinfo.php

   <?php

   ​				phpinfo();

   ?>

   php : 서버가 쓰는 용어







- Software Difine or Docker - 
- firewalld - 네트워크가 동적으로 바뀔때 
- firewall-cmd : 

인바운드룰 : 서버로 들어가는 패킷을 컨트롤하는것 

패킷을 보내는 소스 ip가 있고 목적지 주소 destination ip & port 

패킷이 서버로 들어가면 소스 ip &  port = 

destination = server 

21번으로 들어오는 포트를 allow (허용) 해준다.

 

<https://www.microsoft.com/en-us/learning/certification-overview.aspx> 

associated / expert certification (자격증 시험)

=> 일반문제 56 + LAB 2 ( 8Step PER 1 Lab) Time is Keyword.

firewall setting - peering/ VM setting / **AZ-103 Test is required** = Silver = 5 persons / Gold Partner = 10 persons => 기사 자격증 // 유효기간 3년

* SLOT 환경 = 테스트 환경
* Production 환경 - 