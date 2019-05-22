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

  $ sudo cat -n ( line 번호 출력 ) /etc/httpd/conf/httpd.conf | grep DocumentRoot DirectoryIndex

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

   ​				phpinfo();             #( ) : 함수 표시 

   ?>

   php : 서버가 쓰는 용어

웹앱 만드는 이유 : 홈페이지 만들기위해,

웹 앱은 홈페이지 서비스 목적이므로 visual studio 설치시 쉽게 만들고 업로드 및 업데이팅이 쉽다. ( 무료 ) // .net, c, java 등 모든 언어 개발이 가능함. // 호환성이 좋다. 팀작업 수행이 가능함. 

**slot** : production 환경에서 ( 바로바로 서비스하는 환경  ) 소스 코드를 clone 해서 staging 환경에서 수정해서 swap 하여 업로드시킴 ( 일반적, 정기적으로 야간상 정비함 ) // ex) 옥션 정기 점검시간 내 영업중지 상황 을 slot 을 통해 피해를 방지할수 있다. 

- Software Difine Network or Docker - IP가 유동성있게 변환 되고 이를 처리하는 게 7.0 방화벽
- ip table : 정적이므로 위의 것 지원 불가  : 서비스를 중지했다가 다시해야함 
- firewalld - 네트워크가 동적으로 바뀔때 
- firewall-cmd : 방화벽 허용 

인바운드룰 : 서버로 들어가는 패킷을 컨트롤하는것 

패킷을 보내는 소스 ip가 있고 목적지 주소 destination ip & port 

패킷이 서버로 들어가면 소스 ip &  port = 

destination = server 

21번으로 들어오는 포트를 allow (허용) 해준다.

 NSG ( Network Security Group ) : Azure 방화벽 

https://www.microsoft.com/en-us/learning/certification-overview.aspx> 

associated / expert certification (자격증 시험)

=> 일반문제 56 + LAB 2 ( 8Step PER 1 Lab) Time is Keyword.

firewall setting - peering/ VM setting / **AZ-103 Test is required** = Silver = 5 persons / Gold Partner = 10 persons => 기사 자격증 // 유효기간 3년

* SLOT 환경 = 테스트 환경 (수정)
* Production 환경 - 실제 환경
* swap : slot 환경이 production 환경으로 적용 (updatating)
* <=> 서비스 차단 과는 다르다.  : 실시간으로 업데이트하는 것으로 사용자의 끊김현상업이 하는것



Load balancer - TCP / UDP .Port L7 : **L4**에서 처리 / region 내 처리 

Traffic Manager( ) - DNS or Region 국가 / 지역 간 부하분담처리 역할이 가능함. L7에서 처리한다. 

: 데이터 센터간 부하분담처리

DNS : L4 

TCP/UDP

---

# Review



웹서버 - apache 제일대중

IIS / Apache 

os ( window / linux )

Azure Web App - PaaS

OS - IaaS

Scale out : 수평확장

Scale in : 

Serverless - 밑단에 있는 VM( 용량 크다, 용량 => 과금단위. 이용금액 증가 ) 이 필요없다 - VM=hardware, Docker 이용해 신축성을 이용해 빠르게 / 증 감 한다. ( 용량이 적다 )

위에서 ( IaaS ) 환경에서 바로 확장 축소가 이뤄짐



Web server 밑단에 OS 존재, 웹브라우저는 웹서버 밑단에 클라이언트 프로그램, 

FTP서버에 있는 클라이언트 프로그램: Fileziller

메일 프로그램 : Outlook

sql 서버에 접근하기 위한 클라이언트 관리 엔진 : MSSL

Web server : 80번 포트

웹서버에서 세팅된 홈디렉토리로 파일만 접근가능, 해당 서버에

홈페이지 파일을 클라이언트에게 전송시킴

처음 접속시 클라이언트에게 전송시키는 파일 : Default Document

홈페이지 구성은 디폴트 document를  전송, 전부다 링크로 구성되어 있어 해당 링크 클릭시, 웹서버에게 그 문서를 요청하는 작업

웹사이트 자체는 기본문서에서 부 홈 디렉토리와 하위 폴더 자체에 사이트를 걸어 보내주는것 



# 10979 Module 8 & 20533 Module

* **Active Directory** 

ADDS : Directory Service // DS에서 ADDS 설치 join 을시 켜줘야하고 GPO 사용 / 

-  Directory( 계정, 그룹 = object ) Service, X.500 ( 디렉토리 서비스 표준 / 어려운 사용법 )

: 디렉토리 (네트워크 에 대한 정보 저장), 공유에서 서비스함

- MS의 Directory ( Directory service 의 microsoft virsion ) // IBM SUN 과같은 벤더들의 언어는 복잡하고 어려워 MS가 쉽게 만든 서비스 
- 중앙화된 보안 관리
- 중앙화된 관리 ( GPO 를 통해 관리 )

- **Domain** ( ms 환경내에서 도메인 표시는 세모 표시. ) // 도메인환경

= 각자 각자 컴

= 보안의 논리적인 Boundary ( 범위 )

= Domain 환경을 구성하기위해 DC ( Domain Controller ) : 도메인의 보안 관리 시스템 (Active Directory 설치)

= 중앙화된 관리, ( 중앙의 DC에서 처리함 / 계정을 DC에 한번만 만들어주면 되고 네트워크 내 컴퓨터들이 공유해서 사용함 / 별도의 인증업싱 바로바로 사용이 가능함 )

= SSO (Single Sign On)

- **WorkGroup  (작업그룹)**

= 각자 시스템이 보안을 관리. ( 각자 컴퓨터에서 ip / pw 생성 (=인증) => 토큰생성 = User's SID )

= 자신의 시스템에서 인증

= 기업의 시스템(pc) 이 20대 미만 일시, 소규모 환경 

= 자신의 시스템의 SAM 인증 ( C:\Windows\System32\config )



* **SID ( Security ID )**

- 사용자 계정, 그룹, 컴퓨터 계정

- Admisistrator <=> **숫자로 된 고유번호** (컴퓨터가 (os) 사용자 식별하는 번호)
- folder or file  에는 보안이 할당 되 있으므로 어떤 사용자가 해당 폴더 파일에 접근할시 보안 할당자를 확인하여 권리 부여 권리를 확인한다. 

ex) A com 에서 B com 접근시, B com 의 file or folder 의 id / pw 를 알아야한다. 

: 클라이언트가 있고 회사 com / server 10대 존재시, 매번 각 com 접근시 매번 ID/PW 인증을 받아야한다. 한 user 가 10대의 계정정보를 알아야할시 해당 10대 server 가 같은 id를 사용한다. 

* ADDS / CS / LDS / RMS / FS 

ADDS가 가장 기본. 순서대로 구현됨

5가지 서비스로 분할되어 있다.

AD CS - 인증서 배포 서비스 

AD LDS - AD의 객체속성의 일부를 가져다주는 서비스 ( AD 의 간략한 정보 )

AD RMS - 권한 관리 서버 Right Management Services

AD FS (Federation service) - 도메인과 도메인 사이 Single Sign role

=> 원청 & 하청 회사의 도메인 ( 서버 접근시 )의 보안단위가 다르므로 상대 해방 회사의 id&pw가 필요하다 하지만 FS 맺어놓을시 자기회사 인증을 통해 상대방 server 에 access 가능

AD DS : AD컨트롤의 모든 정보를 담고 있는 것, 이가 잇어야 나머지 하위개념 서비스 작동이 가능한 BASE Service 이다. 

Azure 사용시, 서비스 사용 접근시, 인증을 받아야하므로 AD계정이 필요하다. 관리자 가 azure와 FS 협정을 통해 AD계정이 없더라도 서비스 사용이 가능.  



도메인 - 물리적인 각각의 컴퓨터를  하나의 보안단위로 그룹핑하는 것 / DC에서 중앙화된 관리로 수많은 Server 관리

ex) 도메인환경구성을 위해 중앙에서 DC가 필요 / 고정 IP , 도메인서비스 필요 ( Mulitcampus.com )

GPO를 통해 관리

: DC에서 상승 // 도메인에 에있는 PC 관리, Control, 정책이 적용된다

GPO 통해 중앙에서 검출

OU( Organization Unit ) : 

도메인간 trust 를 맺어 확장해서 나감 // 확장된 전체 : forest 

DC : 2대 이상 가져가나

=> 모든 컴퓨터의 보안관리

컴퓨터가 도메인에 

AD - Azure service를 사용자 계정 만들어 서비스를 이용가능케끔 서비스를 제공함. 

회사내에 어떤 프로그램을 사용자가 사용할수 있도록 권한을 양도.

azure - 2016 

계정을 바로 만들어서 바로 쓸수 있다 . 밑단  VM은 ms에서 관리한다

하나의 계정에서 여러 도메인을 만들수 있다. boundary (보안 boundary) = tenent 

Multitenent 보안 boundary

AAD - MS에서 관리하는 Paas 시스템 // OU, CO 사용하지 않는다. 

Azure portal // AD 

RBEC



 ipconfig /all

10.30.0.4 

​	* IAM 리소스 권한 부여 

Authentication (인증) : ID와 Password를 확인

Authorization (허가) : Resource access 권한 

Subscription > Resource Group > Resource 

= > 서비스크립션 레벨에서 권한을 부여하면 , 하위 리소스그룹에 권한 상속이 이루어짐 

=> 구독 기능이 있어야 권한이 있다. 

tenent = domain



on-premise일 때 - id + password / 

 / AAD

Domain 환경구성

1. DC 구성

   a. 고정 IP

   b. AD DS Role설치

   c. DC Promotion (DC&DNS 함께 설치)

   ​	multicampus.com (도메인의 도메인이름)

   SERVER1을 도메인안에 넣어준다

   ---

   ---

   

# Review

Azure AD : AAD // 중앙화된 보안관리를 하기위해

로그온시 ID / PW 기입, 

ADD  : 클라우드 서비스 // 클라우드 베이스 인증 : https 

AD DS (Active Directory Domain Service ) : ON - premise의 솔루션, 중앙화된 보안관리( GPO ) : 회사내 인증관리 // 토큰 베이스

회사내 아이디가 클라우드 로그인시 ADFS (Federation Service)

관리자가 동기화하여 or ADFS 통하여, 인증연동 관리

Azure Resource 

도메인 구현 : DC 필요, 2012,2016,2019 Role 

AD DS ( 각자 컴퓨터, 계정, 시스템에서 그룹만들어 관리 (Work Group) . CS, LDS, RMS, FS

Work Group :

도메인에 join 시 도메인 주소는 DNS를 가진다. 도메인내 컴퓨터를 그룹핑한다. GPO를 만들어 도메인 내 컴퓨터가 로그인하면 GPO가 할당되어 관리한다. 

AAD : GPO나 OU룰 사용하지않는다. 

IAM : AD에서 만든 계정에게 해당 리소스사용 권한을 부여한다 

Subscription Level // Owver Access 부여 

리소스 사용권한 - 리소스 총괄관리 권한 - Owner 

Resource Group - Resource Group 

Resource Group - Subescription

Tenant - OnPremise 환경의 도메인 역할

---

---



# Test

다단계 인증 multifactor authentication 

id / pw 넣고 한번더 인증

이를 위해선 프리미엄 계정이 필요

Azure AD Free or Basic : azure active directory - multi - factor authentication is not available

Azure AD Premium p1or p2 로 승급 해야 service 이용가능. 