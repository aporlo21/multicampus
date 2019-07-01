## **실습 관련** 

네트워크 연결창 실행 명령어 / 실행창 - ncpa.cpl 
cmd => ipconfig /all => ipv4주소 기본설정 이 떠야 정상
(중복 이라고 뜨면 충돌 발생 의미)

vEthernet => 가상 네트워크 연결 

ping 8.8.8.8 / 구글 dns 서버주소에 핑 넣기

net use v : \\70.12.113.130\share - 네트워크에 공유된 컴퓨터에 접속하겠다, 

active directory 

- git hub !! 프로그램 검색 
  C:\Users\user>net use v: \\70.12.113.130\share /user:a a

www.centos.org / RedHat Enterprise Edition의 무료버젼 

IT 부서 : 정보의 소통, 교류를 담당 / 협업 

하나의 컴퓨터에서 여러개의 운영체제를 사용하는것 
윈도우 서버- desktop experience - GI 3번째는 그냥 명령 프롬프트 만 뜬다

Azure 내에서 암호 복잡성 요구 : (기업내에서)
대문자 소문자 특수문자 숫자 중 3가지가 조합된 암호 (Domain 환경)

- Pa55w.rd
  IPv4 Address. . . . . . . . . . . : 192.168.6.99
   mstsc /v:192.168.6.99
   (원격데스크톱 연결 명령어)
  administrator

모든 서버는 스크립트 화 할수 있다. 많은 서버를 쉽게 관리가능케함 
with 하나의 명령어로 
192.168.6.106
Q740PFYIYRTKQH8TYF

WINDOWS : 원격 데스크톱 연결 (TCP 3389) GUI

GitHub : https: //github.com/Azure/azure-quickstart-templates

​	호스트이름 + 도메인 이름 ex) www.naver.com -> 125.209.222.141

vm2016chj01.eastus.cloudapp.azure.com / 23.96.126.240

서비스의 위치를 알려주는 서비스 (SRV 레코드)

​	ssh chj@rhel76chj.eastus.cloudapp.azure.com

C:\Users\user>ping localhost

C:\Users\user>ipconfig /flushdns



---



## *이론 관련*

TCP / IP 

서로 다른 시스템을 가진 컴퓨터들을 서로 연결하고 데이터를 전송하는데 사용하는 통신 프로토콜( 통신 규약 : 컴퓨터나 원거리 통신 장비 사이에 메세지를 주고 받는 양식과 규칙의 체계 / 신호 체계, 인증, 그리고 오류 감지 및 수정 기능을 포함 ) 들의 집합 

( 4가지를 구성해야함 ) => 명령어 ( ipconfig /all)
자동 구성 : DHCP Server ( 네트워크와 관련된 설정 정보를 DHCP 클라이언트에게 배포하는 서버 / 정적 할당 OR 동적할당 ) 로부터 할당 받는 구성
수동 구성 : 직접 셋팅하는 구성 (=고정 ip)
​	IP ( 인터넷 상에서 해당 컴퓨터의 주소 )
​	Subnet Mask
​	Gateway
​	DNS



**IP 구성** 프로토콜이 작동하기 위해 필요한 항목

TCP/IP 포로토콜을 사용하는 사람들의 식별을 위한 그사람만이 가진 고유 주소 

IP의 32비트는 네트워크 부분과 호스트 부분으로 나뉘는데,

*네트워크 부분* 은 쉽게 말해 대표 즉, 회사나 속해있는 그룹으로 생각.

호스트 부분은 회사원, 속한 그룹의 그룹원이라 생각.

IP 사용 목적은 각각의 사용자들을 구분키 위한 것



IP는 무한정이지 않고 부족하며, 다른 국가들도 사용하므로 구분을 지어주어야한다.

구분짓는 요소가 식별 / 클래스, 서브넷 마스크 이다.



Host name : 네트워크의 (내의) 장치 ( 컴퓨터 / 프린터 / 라우터 / 스위치 )
-> 하나의 네트워크 라면 각각의 경계를 만들어 주는 것이 라우터이다. 

라우터 장비의 IP가 게이트웨이이며. ***동일 내부 네트워크가 아닌, 외부네트워크와 연결하기 위해서는 라우터 필요.*** 

게이트웨이 = 라우터 장비에 세팅되는 IP. 

만약 게이트웨이 IP가 없으면, 기입하지 않으면 내부, 자기 네트워크내 컴퓨터와는 통신이 잘되지만 외부 네트워크 와는 접근이 불가능. 

내부 네트워크 중요한 회사내 네트워크의 경우 게이트웨이 자체를 설치 하지않으면서 보안성을 강화시킨다. 

주로 1, 254번을 자주 쓴다. 70. 12. 113. 고유 IP ( ROUTER IP ) 

GUI 설정 IP는 실제 시스템에 설정되었다는 것을 확인할수 없다. 

반드시 ipconfig /all 로 확인해야함

---



클라우드 컴퓨팅 979과정

최신기술) 클라우드 서비스 - 쓴만큼 비용첨부 => Azure subscribtion 가격첨부 단위 
POWERSHELL - 관리 한계 가 있다, 관리 한계 이유 - 서버 백대 천대, 네이버 이만대 - 하나의 명령어로 서버 컨트롤이 가능, GUI ( Graphical User Interface - 사용자가 컴퓨터와 정보를 교환할 떄, 그래픽을 통해 작업할 수 있는 환경을 말함 ) 컴퓨터 그래픽 기능을 사용하는 사용자 인터페이스( 사용자가 컴퓨터와 대화하기 위한 기호나 명령 체계) 

그래픽 환경에서는 불가능, 다수의 서버관리 시 POWERSHALL 이용. 
CLI ( Common Language Infrastructure ) 공통 언어 기반 윈도우 파일 관리 - POWER SHALL 
클라우드 베이스 서비스 관리 - CLI 
VM 가상머신 DISK STORAGE (가상공간) 관리 
웹 페이지, 웹사이트 만들고 모니터링 한다 
*각 각의 클라우드 서비스 장점 파악 
가상 네트워크 
*container serverless - VM위에서 작동 되는 클라우드 서비스는 4세대 가상화 의 핵심

- 도커 서비스 - 함수에 의해 작동 

- AZURE AD - 기존 기업내 AD 의미 파악

- 가상화 ( LOCK 해제 ) 구현 
  EX) OS는 하드웨어에 락킹이 걸려있다. 

  가상화 사용시 하나의 하드웨어에 여러개의 OS를 올릴수 있는데 이를 VM이라 한다. 원래는 하나의 하드웨어에 하나의 OS 가 걸린다 (종속적)
  APP은 OS에 락킹걸려져있다. 

  프로그램을 OS 에서 분리시킬수 있다. VM은 다른 하드웨어로 가져갈수 있다. 앱도 다른 OS 로 가져갈수 있다. ( PORTABLE APP ) 종속적이지 않고 설치 하지않고 가져갈수 있음을 나타냄. 

  MOBILITY LOCKING을 해제하는 과정 
  여러개의 하드웨어 (SERVER) 간 VM 이동성 존재. 

  EX) 사용자 과다시 VM이 계속이동하여 확장된다. UTILIZATION 불필요한 사용치않는 서버는 전원을 내림. 

  고로, 데이터센터는 유연하게 확장, 이동하게 된다. 
  전기료 절감 가능. 메인 프레임서버 (유닉스) 전기료 매우크므로 시스템 TURN OFF 가 불가능. 

  기존의 유닉스 시스템 - 성능, 안정성 우수 / 전기료 증가. 가상화를 통한 자율적 전기사용 관리 시스템. 데이터센터의 가상화 환경화 
  가상화의 클라우드 개념 - 데이터센터 자체가 가상화되어 있음

+) cloud가 무엇인가 
우리회사 ( on-premise ) 기업네트워크, 서버 => cloud 는 네트워크를 통해서 서비스 받는것 ( 우리 회사로부터 가 아닌, 인터넷을 통한 서비스 받는것 ) ( 광범위 의미 )
일반적으로는 public cloud를 의미한다. => vender ( ms, google, aws )가 제공하는 cloud 
일반 기업이 제공하는 data center 를 elastic (탄력있는) 하게 확장, 축소 및 추상화 풀링하는 ms 솔루션 - 윈도우 서버 , 시스템 센터 를 통해 서버, 하드웨어, 네트워크, 스토리지를 묶어낼수 있다. 
실제 일하는 애들을 recource라고 한다. ( server, storage, network 와 같은 하드웨어 장치를 의미 및 포함된다 )
여러 대의 서버에서 계산 (computing) 하는것 의미 / cpu, memory가 계산을 담당하는 장치이다. 
recource가 풀링되며 서비스가 신축성있게 확장된다. 

**수평/ 수직확장 특징 지능 **서비스 만들시 사용자 하나시 리소스 하나 사용, 

사용자 과수시 여러개의 리소스 사용 - 수평확장 
양질, 고질의 리소스를 사용하는 것 - 수직확장 

초단위로 계산하여 서비스 과금체제 ( 146개의 서비스 ) -> coutomzing / on - demand service로 만들고 거의 바로 이용이 가능하다. 
cloud service는 vender가 이미 만들어 놓고 관리하는 프로그램으로써 우리(일반기업)은 수요에 맞게 구미에 맞게 빌려쓰는 개념이라고 볼수 있음. 
관리자가 패치나 보안 관리 이슈를 벤더가 대신 하므로 관리자의 업무부담이 줄어든다. 

- Type 1 가상화 (실제 서비스), MS - Hyper-v, VMware vSphere, Xen, KVM (리눅스)
하드웨어와 VM 사이에 하이퍼 바이저 존재. 하드웨어위 VM이 하드웨어 공유 사용이 가능토록 제어기능을 담당한다. 실제 하드웨어 리소를 사용이 가능토록하는 부분, 요소 ( 운영체제의 커널 )
MS - HYPER-V 전체 VM 관리 TOOL, 가상화 지원

CPU : 가상화 지원, RAM (DEP지원)
CPU 가상화 지원기능 없으면 해당 기능 못씀
메모리 지원하지 않아도 애뷸레이션으로 작동하므로 사용이 가능함. 

- Type 2 가상화 (테스트 개발)
Oracle VurtyalBoxm, 
엔지니어들이 주로 사용함, HYPER-V (윈도우8.1 버젼 부터 기본제공 / 윈도우 홈에디션 이외 64비트 시 기본 제공)와 호환이 가능. 
VMware Player 는 HYPER-V와 호환 불가능 

**VM (Virtual Machine ) : HYPER-V에 설치된 OS (일종의 구동 프로그램)**

1. WS2019 (윈도우 서버)
2. CentOS (리눅스)
- 오픈소스 ( 공개된  소스 코드나 소프트웨어, 오픈 소스란 소프트 웨어 등을 만들 떄, 그 소프트웨어가 어떻게 만들어졌는지 알 수 있도록 소스코드를 공개한것 / 누구나 이용 가능한 public domain - 저작권이나 기타 재산권을 소유자가 포기하거나 일반 대중에게 기증하여 누구든 자요로이 사용할수 있게 공개 되어 있는 상태. 모든 종류의 소프트 웨어나 정보들 중에서 공용 도메인은 조건이 가장 적은 소프트웨어. 쉐어 웨어라면 요금을 지불해야 하며, 프리웨어를 가지고 있다면 저작권 문제와 같은 제약이 따른다. ) 개발 AI 빅데이터 기본적으로 리눅스위에서 서비스 올림
HOST OS : 실체 하드웨어에 설치된 OS
Guest OS : VM 를 가리킴. 
밑단 하드웨어 위에 하이퍼바이저라는 커널 위치 그 위에 VM위치 ( OS에 해당 ) 

1세대 VM : 바이오스, E-IDE = 일반적으로 사용되는 하드 디스크를 접속하기위한 규격을 가리키며, IDE의 확장 규격에 해당, 

구형 HDD와 PC를 연결하는 방식. 속도가 느려서 최근 HDD에서는 쓰이지 않는다 SATA2 방식이 가장 대중적이며, SATA3 제품도 출시중 ( 0:0 ) <== OS 32. 64BIT 운영체제 설치시, ID 를 사용 (Azure 지원)

2세대 VM : 펌웨어, SCSI = Small Computer System Interface - 주변기기를 컴퓨터에 연결시, 직렬 방식으로 연결하기 위한 표준을 말한다. 

컴퓨터에서 주변기기를 접속하기 위한 직렬 표준 인터페이스로 입출력 버스를 접속하는데 필요한 기계적, 전기적 요구사항과 주변기기 장치를 중산으로 명령어 집합에 대한 규격을 말한다. <== OS 64BIT ONLY 시큐어 부팅 가능, (Azure 비지원)

실제 메모리를 공유하므로 넉넉한 메모리 공간 필요 (많게는 2기가까지 사용가능)
가상 하드디스크(파일) 
​	확장자 
​	vhd : 2008에서 지원 <== Azure ( 이를 통해 파일 이동 가능. **vhdx를 vhd로 변환하여 Azure 로 업로드 시켜줘야 가능** )
​	vhdx : 2012, vhd보다 30% 성능 빠름 4KB - 64TB

APP (프로그램 어플리케이션)
OS (운영 체제) 
하드웨어 CPU / RAM / DD / LAN -> 시스템 성능 좌우 4대 요소 / 하나라도 성능 떨어지면 서버 전체 성능 저하 

- 클라우드 컴퓨팅이 가지는 이점 

- 에이저가 무엇이냐 

- 클라우드 서비스의 유형 

- 클라우드 컴퓨팅 의 특징 
  자기가 만들어 사용하는 서비스 on-demand self service
  광범위 개념 : 네트워크를 통해 받는 모든 서비스 
  클라우드 활성화 의 근본 원인은 **네트워크 덕분** 
  이에 따라 자율주행 ai 가 가능함. 
  -resource  pooling  서버 만대가 하나로 pulling / grouping / clustering 서버가 로지컬하게 하나로 그룹핑 되어있다. 
  compute(서버) 계산 / 연산 
  storage 전체 스토리지가 그룹으로 묶여져있다. network 자체로 pulling 되어져있다. 추상화 되어 있다. 7
  rapid elasticity (신축성) 
  하나의 vm 에 많은 사용자가 사용하므로 recource를 많이 씀. 
  적을때는 recource를 적게 쓰고 

- 클라우드에서 만들어져있는 것 가져다 쓴다
  서버 ( S ) => SNS PD OD
  스토리지 ( S )
  네트워크 ( N )
  운영체제 ( O )
  개발 ( D )
  데이터 베이스 ( D )
  패치 ( P )

모든 관리 클라우드로 가능  / 146개 서비스 중 택해라 

클라우드 컴퓨팅 모델 : Public / Private
azure / aws / gcp - public cloud 
클라우드 환경으로 바꾸려면 서버들은 서버대로 묶여 잇다. 

회사의 데이터 센터를 회사의 클라우드를 on - premise cloud (vm -> public pre)
verdor 들의 클라우드 

Azure stack - 클라우드 만든다 146개의 서비스 / IaaS PaaS SaaS 
기업 - on premise 클라우드  / 개인 public 크라우드 
Soft Difine Network : storage server network 모두 하나로 그룹핑 하는 것 

server - SDC /SDS 소프트웨어로 정의된 서버
Software Difine Data Center - Elastic 하다. 확장성, 신축성있다. 
Private cloud
server 위에 hypervisor ( VIRTUALIZATION )
그 위에 VM ( O/S ) 부터 middleware, runtime, date, appplication 까지 관리 
노란 부위가 벤더들이 관리 하는 영역 그 위는 나의 managing 
office 365 -  SaaS Service 
Iaas - > COSTOMISING 할수 있다. Paas 차이점 
대표적으로 VM 으로 가상머신만든다 - Iaas 가상화가 있고 OS 부터 APP 단계 OS 패치 / 보안관리 - my managing 
paas 
OS patch / run time 에 대한 보안관리 - vender's share 
vender's share 은 untouchable field

AAD - DS -> IAAS
SQL 서비스 - 
VM -용량이 매우크다 (3세대) COMPUTE SYSTEM  계산 해서 나온 결과 값을 가져와서 다시 APP에 주는 
DOCKER( CONTAINER SERVICE )VM위에 APP을 SERVICE 하는것. 
NETWORKING SERVICE 의 대표들 

---



## Cloud Computing 이란 무엇인가

- cloud computing 의 개요

- clound computing이 기업내 가져다 주는 이익
  cloud computing solution 의 특성

- 수요에 맞는 자기 서비스 ( 자기가 쓰는만큼 과금 )

- 광 네트워크 접근 

- resource pooling ( =그룹화)

- elasticity (신축성)

- 서비스 측정
  cloud computing 이점

- 광범위 서비스관리 접근

- 자본지출의 최소화

- 이용에 기반한 과금 모델 

- 작업처리속도 상승
  Cloud computing model 

- **Cloud conputing 모델**

- Public cloud 는 public에 의한 접근권한과 소비를 위한 클라우드 서비스 제공자가 전하는 기초시설, 플랫폼 혹은 앱 서비스 이다 

- Private cloud는 사적으로 소유되어지고 관리되어지는 클라우드로, public cloud의 것과 유사한 이익을 제공한다. 하지만 하나의 기업의 사용을위해 고안되어졌고 보안되어진다. ( 회사의 데이터 센터 - on premise 를 사용하기 위해서는 pulling 이 필요한데 - 이 과정에서 윈도우 서버 및 데이터 hyper v 를 올리고 시스템센터에서 이를 관리한다. 이동성을 부여하는 기관. )
  azure stack 구축시 회사내 데이터 센터도 이와 동일하게 관리가 가능하다. 
  ex) kia motors corp 가 이벤트 창설, 전세계인이 접속해서 이용하는 것으로, 전세계를 연결시키기 위해서는 ( 각국의 데이터센터 ) -> public cloud -> private cloud 로 변환을 하면되는 기술이다. 

- Hybrid cloud는 두 개의 다른 클라우드( public / private )를 묶는 기술로써 서로 다른 두 cloud 모두로부터 recources를 얻기위한 구체적인 목적을 지닌다. 

- **Cloud service의 유형**

Nickolas Carr 의 정의에 따르면 클라우드 컴퓨팅은 ip 자원을 구매ㅡ소유할 필요없이 필요한 만큼 사용료를 주고 쓰는 서비스를 말하며, 중앙 집중화된 대형 데이터 센터에서 서비스를 받고 소프트웨어나 프로그램을 인터넷을 통해 자유로이 빌려 쓰는 방식을 가리킨다. 

최초의 클라우드 서비스는 gmail or dropbox or naver cloud 와 같이 소프트웨어를 웹에서 쓸 수 있는 software as a service ( SAAS ) 가 대부분이었다.

이후 서버와 스토리지 네트워크 장비등의 IT인프라 장비를 빌려주는  infrastructure as a Service ( IAAS ) 생성

플랫폼을 빌려주는 Platform as a Service ( PAAS ) 으로 늘어났다. 

클라우드 서비스는 어떤 자원을 제공하느냐에 따라 이처럼 크게 3가지로 나뉜다. 



**SAAS** - 클라우드 환경에서 운영되는 앱 서비스로 모든 서비스가 클라우드에서 이뤄지며 웹에서 소프트웨어를 빌려 쓸 수 있다.

중앙에서 해당 소프트웨어를 관리하기에 사용자가 일일이 업그레이드나 패치 작업할 필요없다.

**IAAS** - 필요한 만큼 원하는 만큼 컴퓨팅 인프라를 쓰자

인터넷을 통해 서버와 스토리지 등 데이터센터 자원을 빌려쓰는 서비스. 

이렇게 빌려온 인프라에서 사용자는 운영체제를 설치하고 앱 등을 설치한 다음 서비스를 운영할수 있다. 

EX ) 넥플릭스가 AWS의 IAAS 서비스를 이용하는것, 보다 빠르고 광범위한 서비스 운영이 가능하다. ( 선택과 집중 )

CIA / 미국 항공우주국 / AWS / MS /GOOGLE / ORACLE 

KT / LG-UPLUS

**PAAS** - 기호에 맞춰 SW개발 돕는, 개발자를 위한 서비스

사용자는 PAAS에서 필요한 서비스를 선택해 APP을 개발하면된다. 운영업체는 개발자가 소프트웨어를 개발할 떄 필요한 API를 제공해 개발자가 편히 앱을 개발 할 수 있게한다. 일종의 레고 블록같은 서비스로, IAAP가 레고 공장이라면, PAAS 는 레고 블록이다. 개발자는 이러한 블록을 자신만의 방식으로 구성하여 모형을 만드는 것이다. 장점으로는 사용한 만큼 비용지불하므로 개발자로써 비용부담이 덜하되 단점으로는 플랫폼 기반으로 앱을 개발하기에 특정 플랫폼에 종속될 수 있다는 단점이 있다. PAAS 기업으로는 세일즈 포스기업, 구글 앱 엔진 등이있다. 



- Physical / Virtual 

- Windows server + System center ( server platform )
  SDN network SDS storage SDC center -> SDDC datacenter
  이에 해당 모든 서버는 HYPER - V 가 올라가 있다.

- Iaas / Paas 

- Microsoft azure / Windows server + hyper-V+  
  Iaas - 스토리지와 hyper-v는 ms가 관리하고 그위에 vm을 우리가 관리한다. 

- Pass - iaas보다 관리를 쉽게 적게한다. 개발만 우리의 관리 영역

  - | - [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] 

- [ ] |
    | ----------------------------------------------------------- |

  * 기업관리 영역 / ` 서비스로 제공함 

    ADR MOV SSN 

Private center 에서 서버가 관리. 
azure - 전세계 모든 데이터센터를 관리함. 국가를 넘어선 관리서비스 시스템 

Saas (개발된 프로그램 관리)
- office 365 / dynamics / VSTS / intune / microsoft azure / azure 관리 / subsciption(과금) = biling 

**Azure 개요**

cloud 베이스 app을 배치시키고 작동시킨다.

on-premise와 cloud service를 통합시킨다. through azure stack 
amz / google - public cloud solution 만 가지고 있다. <-> ms public & private 둘 모두 가지고 있다. 
중요 카테고리 서비스 
compute -> iaas

* 가장인기 있는 클라우드 오픈소스 

  container instances (도커 뜨는 기술 / 공부할 기술 ) 

  1. OPEN SAUSE : Private Cloud 구축기술로, 기업내부에 직접 클라우드 서비스를 만드는 점에서 주목, 

  2. DOCKER : 도커는 오픈소스 프로젝트로 컨테이너 응용프로그램을 자동화하는 엔진으로 컨테이너 응용프로그램의 배포를 자동화하는 오픈소스 엔진

     - 닷클라우드 기업 ( PAAS 사업 주로했던기업 )

     개발환경을 서비스형태로 제공하는 PAAS - 프로그래머가 프로그램을 개발하려면 여러명이 동시에 개발함과 동시에 인프라 환경이 갖춰져야함. 이 과정을 통한 발전된 기술력으로 '도커' 리눅스 컨테이너 기술을 활용해 오픈소스 프로젝트를 띄웠다. 

     리눅스 컨테이너 기술은 = 가상화 기술

     하이퍼바이저는 하나의 컴퓨터에서 여러 개의 운영체제를 사용이 가능케 만드는 기술로써 

     가상화 환경은 가장 밑단에 깔린 HOST OS를 공유한다. 만약 게스트 OS가 네트워크를 많이 사용하는 앱을 돌리면 한정된 호스트 OS자원으로는 앱을 감당키 어려워 이 HOST OS, GUEST OS, APP 을 중재하는 과정에서 많은 작업을 처리하게 된다. 

     도커는 HYPER VISOR와 달리 Guest OS 두지않고 Host OS kernel (컴퓨터 운영체계의 가장중요 핵심으로, 운영체계의 다른 모든 부분에 여러가지 기본 서비스를 제공한다. 메모리나 저장장치 내 운영체계의 주소공간을 관리하고, 모든 주변장치들과 커널의 서비스들을 사용하는 다른 사용자에게 고루 나누어주는 메모리 관리자를 지닌다. 흔히 시스템 호출이라 알려진 일련의 프로그램 인터페이스들을 통해 요청된다. ) 

     azure virtual machine / networking
     virtual network / azure DNS / Traffic manager / load balancer 
     data & storage -> paas
     storage / azure SQL database 
     web&mobile
     web apps / moblie apps
     etc
     azure ad / mfa  
     azyre backup / site recovery

---

# azure management models

- **Classic** 

  ARM을 지원하지 않는 서비스로의 이용을 제한해야한다.

  이 모델은 제한된 [RBAC] 를 지원한다. 

  *Azure cloud service - 확장하기가 어려움 . 다른서비스가 왔을때 연동이 어려움* 

- **Azure Resource Manager template** 

  Resource group 개념에 기반한것으로 태킹을 지원한다 / 가능한 ARM을 배포에 사용하라.

  확장성의 문제로 classic - resource manager 모드로 변환 / 하나하나의 서비스로, 별도로 만들어서 관리하는 micro service  체제. 

  azure resource - cloud 에서의 정의는 하드웨어, 실제로 작업을 처리하는 애. <-> azure 내에서는 service 하나하나를 recource라고 한다. file 하나를 recource라 명명 - folder

  새로운 resource 그룹을 만들거나 기존의 resource 그룹에 포함시키거나 

  -> 관리범위 recource group 

  그룹삭제시 resource 그룹내 service 모두 삭제됨. 

  resource 그룹에 권한 부여시 그룹내 모두 적용 

  resource tagging support - resource 에 부여되는 속성 ex) 인사부 영업부 관리부 

  각각의 부서의 resource만 tagging으로 gathering 해서 가지고 올수 있다. 해당 resource의 요금이 얼마인지 확인 가능. 한꺼번에 대량작업을 할때 사용한다. 

  template - ARM template : 템플릿은 기존의 완제품, 한꺼번에 여러개의 service를 배포할수 있다. 이를 배포시 포함된 service가 같이 배포되는 개념. 

  머신 10개 구성 - 해당 머신은 템플릿이 만들어져있다. json 형식으로 만들어져있다. 



  **Full Roll Base Access Control [RBAC]  support**

  어떤 권한을 ( 쓰기 삭제 관리 백업 등등 azure의 여러권한을 ) 그룹에 부여시, 그룹내 resource에 해당 권한이 부여된다. 이를 어떤 특정 계정에 부여할수도 있음

  azure portal  & account center 

  구독을 등록 및 삭제가 가능한 구역 

  subscription -> azure potal 에서 resource 만들수 있다.
   pay as you go ->  개인이 직접 신용카드로 결제해서 적용하는 구독 (종량제)
   ms reseller EA계약, 많은 사원들 기준으로 기업이 신청하는것. 
   reserved VM instances 남들이 서비스 받지않을 때 내가 쓰겠다. 기하학적 계산으로, azure가 할일 별로 없을 때, 남들이 놀때, 대량 계산시 사용.

   LOCAL ) azure powersheel & azure CLI 를 통해 azure 관리 동사 + 명사
   Azure - security Center
   Azure - advisor - 알림
   Azure - monitor - 모니터링 
   533 교재 참조시, powershell & CLI로 대량 관리.
   portal 에서 azure cloud shell 바로 지원
   원격으로 public ip address 가입 시 사설기관에서 접속 가능 

   linux - SSH
   원격접속시 PUBLIC ID로 
   WINDOWS - RDP
   VM - 사설 IP 로 기입 

---



  # MODULE 3



  **Azure portal 이란?**

  **Azure portal 을 이용해서 vm 만들기**

  - VM 명
  - VM 디스크 타입 
  - 유저명, 패스워드, SSH public key (LINUX ONLY)
  - Azure AD authentication (LINUX ONLY)
  - Resource group and location 
  - Licensing (windows only)
  - VM size
  - 고 가용성 ( availability zone or availability set )
  - 스토리지 ( 관리된 or 비관리된 디스크)
  - 가상의 네트워크 와 서브넷
  - public ip 주소
  - 네트워크 security group
  - extension
  - auto-shutdown
  - boot and OS diagnostics 
  - managed service identity 
  - backup

  **use Azure VMs **

  - 작업처리속도 향상을 위해 데이터 센터를 확장하라
  - on premise datacenteror 다른 클라우드 제공자로부터 작업량을 옮겨라
  - 작업량 생산 테스트 발전을 시행하라. 

  **KEY Difference**

  - azure VM을 사용시 중요 차이점 / 2세대 하이퍼 V - VM 을위한 지원 X
  - .vhdx 가상디스크 포맷에 대한 지원 X
  - 동적확장 OR 디스크 차이에 대한 지원 X
  - VM 콘솔 접근만 읽는다. 

  **초당 과금** - VM 중단시 적용되지 않는다, Azure Storage내 vm disk에 대한 과금과는 분리.



  **VM 가용성 환경을 설정하다**

  **가용성 존에서의 Azure VMs**

  - 99.99% 가용성 SLA
  - 가용성 세트 내에 둘 혹은 이상의 분리된 Azure VMs, Azure VMs 혹은 같은 가상의 네트워크 내의 Azure VM scale sets 의 논리적 그룹핑
  - 가용성 존을 다른 fault (결함) 와 update 도메인들에 일치시킨다.
  - Azure VM 혹은 Azure VM 스케일 셋 배치 기간동안 가용성 존 내 Azure VM들은 배정되어져야만 한다. 

  **가용성 세트 내에 Azure VMs는** 

  - 99.95% 가용성 SLA ( Service Level Agreement - 신뢰성 있는 서비스 수준 협약)

  - 같은 서브넷(네트워크의 일부를 구성하는 망, 네트워크 중 호스트 컴퓨터를 제외한 부분을 칭한다.) 내에 둘 혹은 이상의 Azure VMs를 논리적 그룹핑 시키기 

  - Azure VM deployment 동안에 배정되어져야한다. 

  - 3fault domains 와 20 update domains 까지 

  - Azure Load Balancer Basic/ Standard 와 Web Application Gateway를 지원한다. 

  **VMs 을 분리한다**

  - premium storage disks를 이용한다면 SLA 99.9%가용성을 보장함

  하나의 VM 가용성 세트안에 fault domains와 update domains 



  **추가적인 확장성과 가용성 고려사항** 

  수직성  VM 크기를 바꿈으로써 ,수평성 VM scale set을 이용함으로써 

  - 수동 / 자동
  - 1000 VM 까지  100VMs 의 그룹 배열에 분배되어진다.
  -  각 배치 그룹당 5update domains 와 5 fault domains 

  **가용성 고려사항** 

  - 사용성 세트 혹은 존을 이용하라 

  **Azure portal을 이용함으로써 VM을 availability 세팅과 zone 에 배치**

  **VM 확장을 이용하여 시스템을 작동시키는 환경을 설정하기**

  - VM agent 

  marketplace vm image 내 default 에 의해 포함되어지는 것

  windows VM을 위한 추천되어지는 하지만 동시에 선택적인 것

  - VM extension 

  Azure VM Access extension



  **VM으로 연결시키기**

  windows VMS 

  *DEFAULT : 불이행

  RDP :  패스워드 기반 증명 / 디폴트에 의해 portal 혹은 windows powershell 을 통해 .rdp 파일 이용하라 

  WinRM : 보안성에 기반을 둔 증명서를 지원하라

  리눅스 VMs 

  SSH : 패스워드 기반 혹은 증명을 기반에 둔 증명서

  SSH CLINET를 이용하라

  RDP : xfce4 - desktop envirnment / xrdp - RDP server

  Remote Desktop Protocol 

  Window NT & CE 가 서로 통신하기위해 만든 프로토콜.



  **Azure VMs를 이용하기** 

  작업처리 속도(agility) 를 위해 당신의 데이터 센터를 확장시켜라 

  당신의 작업량을 on-premise datacenter 와 다른 클라우드 제공자로부터 이주시켜라 

  작업량을 생산, 테스트, 발전 시행시켜라 



  **Azure VMs 를 이용할 때 주요 차이점** 

  generation 1 hyper v vms 만 지원한다. 

  per-second 에 기반하여 계산 하여 요금을 계산한다. 

  use azure VMs 

  수직, 수평 확장 가능케하고 

  생산, 시험, 발전 환경을 위한 실행

  generation 1 은 지원하지 않는다. 

  fixed disk 만 지원한다. 

  동적 확장 or 차이점 디스크 or 고정 디스크 



  ## 가상 디스크타입 

  고정디스크 :  80GB로 만들 경우 80GB  ->  하드 디스크에 저장이 안되어있는 상태인데 할당을 잡아버린다. 공간확장을 고려하지않고 공간을 할당하기에 성능이 떨어진다. 

  동적확장 : 80GB로 만들 경우 4MB -> 80GB	for test /  처음 파일 크기가 4MB  공간 확장을 고려함. 

  차이점 보관용 :  Base 에서 변경된 내용만 저장  for test 하나의 부모에서 "2019" 변경된 내용만 가지고 가는것. ( 읽기 전용  - DIFFERANCIAL ENVIORNMENT )

  VM 과

  VM -> vhd (2TB) Azure 지원  / vhdx (64TB)  30%성능 향상 / vhds (set)

  * KEY difference when Azure  * 
  * F,FS,PSV
  * 머신러닝 - GPU
  * N  버젼 시리즈 .곽 
  * VN name
  * refffl,

  ARM Template 로 배포 가능 

- availiability 가용성

availability zone 

Service Level Availiability 

1년에 5분정도의 다운 타임은 이해, 허용해주겠다. 

SLA 

- availiability set 구성

SSD ( Solid State Drive ) - 하드디스크와 달리 자기디스크 아닌 반도체 메모릴 내장하여 정보를 저장하는 장치로, 속도가 빠르고 기계적 지연, 실패율 발열 소음이 적고 소형화 경량화가 가능하다는 장점이있다. ex) nand flash, dram 등 초고속 반도체 메모리를 저장매체로 사용하는 대용량 저장장치를 뜻한다. 99.9% availability

VM ( 휴대전화에서 콘텐츠나 앱을 단말기내애 실행할수 있는 환경을 제공하는 가상 머신의 모바일 운영체제, pc 상 윈도우와 같은 일종의 구동 프로그램.

서비스는 중단되어서는 안된다. AZURE 의 서비스가 죽지않게 보장해주겠다. AVAILABILITY SET 세팅시 99.95%를 보장해주겠다. 

RACK - 장롱 - 여러개의 서버들이 하나의 RACK에 붙어있다. 

FAULT DOMAIN SETTING 

VM을 3대에 LACK에 분산하여 저장함으로써 하나의 랙에 고장시에도 중단되지않고 구동이 가능케하는것  

서버 리부팅이 적용되면 서비스 중지가 되버림 / 패치 후 VM의 단위이다.

UPDATE DOMAIN은 

여러개의 VM을 나누어서 저장한후 동일 VM임으로 부팅하여도 구동엔 문제없음

하나가 업데이트 되면 하나가 서비스하고 

하나가 패치되고 리부팅 되면 한쪽이 서비스하는

 zone 센터 단위 



RDP : 원격에 있는 파일에 접근할때 방화벽에서 TCP 33 LINUX SSH통해서 접근 

**RDP : 그래픽 카드로 접속하는** 

**SSH** **: 명령어로 접속**

 (secure shell의 약어로 공개 키 방식의 암호 방식을 사용해 원격지 시스템에 접근하여 암호화 된 메세지를 전송할 수 있는 시스템으로 LAN상 다른 시스템에 로그인시 스니퍼에 의해 도청당하는 것을 막을 수 있다 ) : 네트워크 보안도구중 하나로 원격접속을 안전하게 해주는 프로토콜. 



**공익 IP에서 RDP는 3389 포트, SSH는 22번 포트 로 Default 되어진다.** 

방화벽 세팅은 INBOUND  RULE 컨트롤 함. 

패킷에는 Source ip / destination ip 가 들어옴 

반드시 DNS서비스를 통해 IP로 변환시켜 패킷에 적용되어져야한다



C:\ 드라이브 - 운영체제가 설치된 드라이브

D:\ - TEMPORARY 디스크 -  (DATA) 자료 부팅시  다 날라감 - PAGE 파일 / 시스템 파일 ( 가상메모리의 영역 )

F:\  운영체제에 적용이 가능하다 DATA를 저장한다. 

DNS 

이름풀이 서비스 ( FQDN (전체 컴퓨터 이름) --> IP Address )

영문으로 된 이름을 ip로 변환하는 서비스 

  모든 서비스 - azure가 제공하는 리소스 
  모든 리소스 - 내가 만든 리소스 
  리소스 그룹 - 리소스를 관리하는 그룹



  azure portal  & account center : 구독을 등록 및 삭제가 가능한 구역 
 subscription -> azure potal 에서 resource 만들수 있다.
 pay as you go ->  개인이 직접 신용카드로 결제해서 적용하는 구독 (종량제)
 ms reseller EA계약, 많은 사원들 기준으로 기업이 신청하는것. 
 reserved VM instances 남들이 서비스 받지않을 때 내가 쓰겠다. 기하학적 계산으로, azure가 할일 별로 없을 때, 남들이 놀때, 대량 계산시 사용.

 LOCAL 

Azure powersheel & azure CLI 를 통해 azure 관리 동사 + 명사
 Azure - security Center
 Azure - advisor - 알림
 Azure - monitor - 모니터링 
 533 교재 참조시, powershell & CLI로 대량 관리.
 portal 에서 azure cloud shell 바로 지원
 원격으로 public ip address 가입 시 사설기관에서 접속 가능 

 linux - SSH
 원격접속시 PUBLIC ID로 
 WINDOWS - RDP
 VM - 사설 IP 로 기입 

---

REVIEW ) 

Premium Disk = SSD

Boot diagnostics - 디스크 파일 / 부팅시 문제있는지 판결 off시 속도 상승

Enable auto - shutdown => off 

vm001chj

---



# Module 5

## Azure networking

**CCNA 과정** ( 네트워크 기술 능력을 검증하는 가장 기초적인 자격증명)

1. IP Address v4 

   계산기 실행 - calc (32bit = 2^32 = 42억9천개) / IP의 부족현상, v6(128bit), 인터넷의 주소 체계 - 340 언데실리온 

**A Class 0** ( 나머지 31비트가 0 이면 첫번째 주소, 나머지 31비트가 1이면 마지막주소 )

​				00000000 00000000 00000000 00000000 ( 8bit 중 가장 큰수는 - 255 )

​				011111111 111111111 111111111 111111111 ( 하나의 8Bit => 옥텟 / 4옥텟 )

 				=> 255 - 128 = 127 

8비트까지가 네트워크 수 (2^7 - 2(0, 127) = 126(네트워크 수/ 라우터)), HOST 수( 2^24 - 2 = 16777214 )

​				A 클래스 범위 

​				N.H.H.H => 첫번째 옥텟이 네트워크부분 나머지가 호스트부분

​				255.0.0.0

**0.0.0.0 / 127.255.2**

**55.255 ( 0.127 은 특수하게 사용 )**

 				0 : 네트워크 식별

​				 127: Loop Back IP, 자신의 시스템에 구현된 IP, Test 

​				host file => memory

**B Class 10**

​				10000000 00000000 00000000 00000000  

​				101111111 111111111 111111111 111111111

​				N.N.H.H

​				255.255.0.0

​				Network수 - 2^14 - 2 = 16384 

​				host 수 - 2^16 - 2 = 65534

**128.0.0.0 / 191.255.255.255**

**C Class 110**

​				11000000 00000000 00000000 00000000

​				11011111 11111111 11111111 11111111

​				N.N.N.H

​				255.255.255.0

network 수 ( 2^21 = ), host 수 2*8 -2 = )

**192.0.0.0 / 223.225.225.255**



**D Class 1110 멀티캐스트 데이터 전송 (1 : 그룹 통신)**

**E Class 1110 군사용, 예약 시 (남겨놓은 IP 클래스)**

​	host id의 모든 비트가 0일때 : Network 식별

​	host id의 모든 비트가 1일때 : BroadCast 데이터 전송시 사용

*호스트 수를 계산할때에는 항상 2를 빼준다



데이터 전송방식**

- 유니캐스트 ( 1:1 통신방식 )

한 사람의 특정 수신자에게만 데이터 패킷을 전송하는 방식. 인터넷에서 전자메일, 화상회의를 위한 화상, 음성 데이터를 하나의 송신자가 다른이 에게 1:1로 전송하는 방식. <=> 멀티캐스트 / 데이터를 보내는 송신자측에서 지정된 수신자 IP주소로만 데이터가 전송된다. 즉, 여러 수신자가 같은 데이터를 원할 때 송신자는 데이터를 여러번 복사하여 각각의 수신자 IP주소로 전송해야한다. 받는 이의 수만큼 데이터 패킷을 반복해서 보내므로, 통신망 효율을 저하시키고, 서로 나누어 가져야한다는 문제에 대한 전송 부담도 있다. 

- 멀티캐스트 ( 1: 그룹)  

구내 정보통신망 LAN이나 인터넷에 접속되어 있는 일부 사용자 내 한사람이 몇사람에게 정보를 송신하고 그것을 수신한 몇사람이 같은 내용을 버킷 릴레이 식으로 복수의 사람들에게 송신함으로써 정보를 전파하는 특정 다수인에 대한 전송을 의미한다. 

- 브로드캐스트 ( 1: 라우터 내 모든기기 D클래스 ID 전송시 해당기기 필터링 )

IP 네트워크에 있는 모든 로컬 네트워크 호스트로 데이터를 전송하는 방식. 호스트 주소가 전부 1 인 경우에 브로드캐스트 방식이 사용됨.

-  D클래스 ID 차용 자기 PC에 브로드 캐스트 IP 차용, 라우터는 하나의 네트워크를 분리시키는 장비 / 그 네트워크에 포함된 모든 PC에 데이터를 전송하는 것 목적지 주소 , 패킷에 브로드 캐스트 ID / 하나의 패킷이 여러대의 PC에 전송


2 진수 => 10 진수

1 1 1 1 1 1 1 1 (2의 0승 자리)

128 64 32 16 8 4 2 1 => 255

​					11111111

1bit	2^1 = 2

하나의 비트에 0,1 두가지 사용가능

​		0

​		1

2bit	2^2 = 4

​		00

​		01

​		10

​		11



**IP Address = N + H**

**Network id** : 네트워크를 식별 ( 우편번호 ) => 네트워크 자체를 의미 

ISP Internet Servive Provider ( 인터넷업체 ) ISP에서 부여 IAN=O

LAN - 각 회사가 라우터 장비로 연결되어 있다고 가정 전세계적으로 연결, => 이 NETWORK ID를 통해 각 회사 ROUTER 를 찾아감. 

**Host id** : 네트워크내의 시스템을 식별 ( 번지 ) ROUTER 내 해당 PC 까지 찾아냄. 

**Subnet Mask** : Network ID (네트워크)를 식별하기위해

​			첫번째 Bit부터 1이 들어가는 bit까지 network ID이다.

​			없으면 network id 찾을수가 없다.

**Gateway IP** : 라우터 장비에 부여되는 IP, 내부네트워크와 외부 네트워크의 관문. 

***자신의 IP와 Subnet Mask 를 AND 연산하여 / 자신의 Network ID를 식별하고*** 

목적지 IP와 자신의 Subnet mㄴask를 / AND연산하여 / 목적지 Network ID를  모두 Network ID가 동일할 경우 / Gateway 통신하고 다를 경우 / 패킷 ( 전송하기 쉽도록 자른 데이터의 전송단위 ) 을 Gateway 없이 통신하고 / 다를경우 패킷을 Gateway에 전송 

AND연산하려면 비트를 모두 2진법으로 변환하여 계산을 진행시킨다. 



2. Subnetting, CIDR 표기법

Subnetting - ip 를 잘라서 쓰는 

CIDR (Class-less Inter-domain Routing ) -  Subnet Mask 를 10진법으로 표기하지않고 2진법으로 표기 

*낭비 되는 ip가 너무 많기 때문에 클래스별로 ip 할당을 중지하고 subnetting 을 시작

= class는 ip낭비가 너무 심하므로 10진법 표기 대신 2진법으로 표기 

ex) 우리회사는 50개의 ip가 필요합니다. 최적의 subnet mask? 

​	ip / 26 <== Subnet Mask 1 비트수

​	ip / 255.255.255.192 ( 24비트)

ex) 우리회사는 300개의 ip가 필요합니다. 최적의 subnet mask를 CIDR표기법 으로 표기?

​	ip / 23

​	ip / 255.255.254.0

111111111 11111111 11111110 00000000

ex) 우리회사는 2000개의 ip가 필요합니다. 최적의 subnet mask를 CIDR표기법 으로 표기?

2의 6승 - 2 = 62

​	11111111 11111111 11111111 11000000

11111111 11111111 11111000 000000000

Subnet Network : 대규모 네트워크를 구성하는 개별 네트워크 

각각의 서브넷들이 모여 하나의 논리적인 네트워크를 이루어 망간 상호접속을 위한 완전한 동작을 수행한다는 의미. - 여러 서브넷 ( IP SUBNET = 하나의 상호접속된 네트워크나 인터넷을 구성하는 네트워크로써 그룹내 서브넷은 각각 IPv4 or IPv6 을 공유함 ) 들이 하나의 상호 접속된 네트워크나 인터넷을 구성한다고 말함. 

ISP에서 70.12.113.0/24 를 부여 받았다. 2개의 네트워크를 분할 해서 사용

브로드캐스트를 한번씩 보낸다 범위 - 라우터 범위내 모든 PC 에, 이 패킷이 나의 패킷인지 아닌지 확인 해본다. 라우터 안에 시스템이 많으면 브로드캐스트가 과부하된다. 보안의 ISSUE도 있다. 라우터라는 장치에 포트가 있다. 스위치라는 장비로 PC와 연결됨. 2개의 네트워크로 분리를 시킨다. 좀더 작은 네트워크로 분할 하는것이 SUB Network. 두개로 쪼개 쓰는것 sub network 하나의 v넷을 만들고 서브네트웤을 만든다. 

라우터 장비에 포트에 IP/ Subnet Mask 할당, 이에 따라 네트워크 규모 설정이 가능하다. 

포트에는 스위치나, 허브에 연결이 된다. 

isp에서 부여받은 ip ( 70.12.113.0 / 24 ) 를  나눠 사용할수 있다. 2개의 네트워크를 분할해서 사용  subnetting - 서브네트웤을 만든다. 

```
문제 1 ) 70.12.113.000000000 / 70.12.113.0 / 25 bit 

Network ID : 

Broadcast IP :

Host 수 :

IP 범위 : 

문제 2) 70.12.113.100000000 / 70.12.113.128 / 25 bit를 서브넷마스크쓰면 

Network ID :

Broadcast IP :

Host 수 :

IP 범위 : 
```

70.12.113.0**00000000** (H) / 70.12.113.0 / 25 bit 

Network ID : 70.12.113.0

Broadcast IP : 70.12.113.127

Host 수 : H - 2^7 비트 - 2 = 126

IP 범위 : 70.12.113.1 ~ 126



70.12.113.10000000 / 70.12.113.128 / 25 bit를 서브넷마스크쓰면 

128 = 10000000 2^7비트 호스트수

Network ID : 70.12.113.128

Broadcast IP : 70.12.113.255	

Host 수 : 128 -**2** =126

IP 범위 : **70.12.113.**129 ~ 254

```
Exercise

​```
ISP에서 70.12.0.0/16 를 부여받았다. 4개의 네트워크를 분할해서 사용한다.
01000110 00001100 00000000 00000000 
11111111 11111111 00000000 00000000 (subnet mask)
255.255.0.0 (subnet mask)

255.255.192.0 (subnet mask. 4분할이므로 2bit 추가한 18bit 까지)
70.12.00000000.0/18 
	network ID : 70.12.0.0
	broadcast ip : 70.12.00111111.255 = 70.12.63.255
	host 수 : 2^(host bit 수)-2 = 16382
	ip range : 70.12.0.1 ~ 70.12.63.254
70.12.01000000.0/18
	network ID : 70.12.64.0
	broadcast ip : 70.12.01111111.255 = 70.12.127.255
	host 수 : 16382
	ip range :  70.12.64.1 ~ 70.12.127.254
70.12.10000000.0/18
	network ID : 70.12.128.0
	broadcast ip : 70.12.10111111.255 = 70.12.191.255
	host 수 : 16382
	ip range : 70.12.128.1 ~ 70.12.191.254
70.12.11000000.0/18
	network ID : 70.12.192.0
	broadcast ip : 70.12.255.255
	host 수 : 16382
	ip range : 70.12.192.1 ~ 70.12.255.254
​```


```

4개  의 네트워크 분할 => BIT 2개 사용해서 바꿔

**70.12**(네트워크 ID).0.0

**00**000000.00000000  - 70.12.0.0 / ** 18**(서브넷 마스크)

**01**000000.00000000 - 70.12.128.0 / 18

**10**000000.00000000 - 70.12.128.0 / 18

**11**000000.00000000 - 70.12.192.0 / 18

ISP에서 70.12.0.0/16 를 부여 받았다. 4개의 네트워클르 분할해서 사용
Network ID : 70.12.0.0	

Broadcast IP : 70.12.63.

Host 수 :2 ^ 7 - 2 =126

IP 범위 :  70.12.0.1 ~ 70.12.63. 254

public cloud 는 기초시설, 플랫폼, 앱서비스이다. 클라우드 서비스 공급자가 대중에 의한 소비와 접근을 위한. 

private cloud는 사적으로 소유되어지고 관리되는 클라우드로, public  cloud의 것과 비슷한 이익을 제공하지만 하나의 회사에 의한 이용을 위해금해진다. 

hybrid cloud는 두 분리된 클라우드를 결합하는 기술로, 둘로 부터 recsource를 얻기위한 목적을 위한것.

**Public IP** : 라우팅 ( 패킷의 전송 경로를 지정하는, 네트워크 계층의 가장중요 역할 ) 되는 IP - 공인 IP

회사 - 네트워크 => 라우터 장비로 그물망처럼 연결되어져있다 패킷을 보내면 패킷을 받아서 목적지 주소를 보고 패킷이 라우터 경로를 통해 각각의 코스트 경로를 찾아가게한다. 

**Private IP** : 라우팅 되지 않는 IP - 회사내부망 내에서 사용할수 있게한 IP 

사설 IP 사용목적 2가지 

​		1. 보안 : 외부망에서는 패킷이 이동이 불가하다. 

		2. NAT : 하나의 공인 IP를 가지고 회사내부망의 여러대의 사설 IP 주소를 변환시켜 패킷의 DESTINATION ADDRESS을 인터넷망으로 내보내기전에 라우터에서 패킷을 받아 목적지 소스의 주소를 공인 IP주소로 변환하여 내보내고, 이를 다시 사설IP로 받아 저장한다. 공유기 공인 IP주소 

A 10.0.0.0 ~ 10.255.255.255 

B 172.16.0.0 ~ 172.31.255.255

C 192.168.0.0 ~ 192.

port : 데이터가 전송 되는 통로 (데이터가 전송 되는 통로) 0~ 65536		

잘 알려진 포트 0 ~ `1203

TCP 신뢰성없는 전송, 3WAY HANDSHARE 전송속도가 빠르다

UDP 신뢰성없는 전송, 전송속도가 빠르다. 

TCP 21 : FTB

TCP 22 A: SSH

TCP 23 : Telnet

TCP 25 A: SMTP

TCP 53 DNS영역전송

UDP 53 : DNS 이름풀이 

UDP 67,68 : DHCP

TCP80 : HTTP

TCP 1433 : MS-SQL

TCP 3389 : RD	



wf.msc( 고급 방화벽), firewall.cpl ( 기본 방화벽)

**pear to peer** : 내가 곧 클라이언트고 서버이다. 바로바로 공유 스타일

**client to server** : 많은 사용자들이 서버에 접속시 채택. 서버를 중앙에 둠

LAN : A,B 컴퓨터 네트워킹 연결 이들이 통신하기위해서는 동일한 프로토콜이 설치되어야 교류가가능 .

A에서 HUB를 통해 B로 간다. 

HUB : 데이터가 허브로 들어오면 열결된 모든 컴퓨터에 던져주는 역할. ( HUB 쓰는 업체 X)

SWITCH : HUB보다 좀 더 똑똑함. / 스위치는 네트워크에 물린 정보를 모은다. 해당 포트로 연결해서 정보를 던져줌 ( A => B)

ROUTER 장비에 PORT잇고 이것이 스위치장비로 연결되고 이후에 PC로 연결됨 

ROUTER 장비는 다른 회사 ROUTER 들과 연결되어있다. ROUTER 들과 교류하면서 패킷경로를 알려준다

3. **OSI  7 Layer** 

- 프로토콜 정의, 표준 
- 초창기의 서로다른 기종. 통신이 안되어서 어떻게 어떻게 개발하라는, 통신이 가능토록 한 매뉴얼
- LAN 카드 - 데이터 신호를 전기신호로 바꾸어줌
- 전기신호를 데이터 신호로 변환해준다. 
- 데이터를 하위레이어로 내려보낼 때 잘게 쪼개서  네트워크에서 통신할수있는 데이터 포맷으로 내려보내는것을 encapsulation 
- <=> deencaosulation : 
- 레이어마다 패킷 호출법이 다르다.

4. network 장비 ( 라우터, 스위치, 허브 )

5. NAT : 패킷의 SOURCE IP ==> Public IP로 변환해서 인터넷 망으로 전달

6. VPN

   인터넷 망을 통해 외부 네트워크에서 회사망을 접속 

   터널링 프로토콜 (밑으로내려갈수록 양질의 것)

   **PPTP** => 방화벽에 대한 ISSUE가 있다.

   **L2TP**

   SSTP

   IKEv2

   터널링 기술을 통해 외부 컴퓨터가 회사내부에 있는 것처럼 업무서버에 접근하는것 VPN

   SSH 

IKEv2는 무선으로 연결할때 세션이 끊겨버리는 경우 대비, 무선 AP(access point) 

본사와 지사 라우터와 라우터딴에서 터널링을 만들어 하나의 단일 네트워크를 만들게 되는 효과

# Module 4

DNS

adatun, com => network ID

acctirPC

HOST + Network

AcctDirPC.adatun.com

도메인구조 IP구조는 반대로 되어있다. 

TTL time to live

www.internic.org => 전세계 도메인 관리



DNS cache 캐시 - 서버의 부하를 줄여준다 / 빠르다 (<=> 부정확한 값)

TTL ( time to live ) ip헤더 내 폐기까지의 시간. 패킷이 네트워크 내 너무 오래 있어 폐기 여부를 라우터에게 알려준다. 1일이라면 캐시 1일동안 저장 ( TTL 기간만큼 저장 )

자기 TCP./IP DNS에 들어가 있는 서버를 LOCAL DNS 서버

인터넷 망을 다 뒤져서 IP를 가져와서 사용자에게 알려준다.

전세계 13대의 루트 DNS서버 마비시, 전세계 인터넷망이 작동이 안된다.

회사 닷컴 도메인, msec e

1. DNS ( 네트워크에서 도메인이나 호스트 이름을 숫자로 된 ip주소로 해석해주는 tcp/ip 네트워크 서비스 ) Cache ( 주기억장치와 중앙처리장치 사이 데이터를 저장해두는 임시장소. )

C:\Windows\system3\drivers \wrt

DNS주소는 

Zone : DNS DataBase (multicampus.co.kr)

레코드 <== Zone내에서 실제 일하는 아이

레코드들의 묶음 = zone

**레코드의 종류**

**A : 호스트 이름을 IP로 변환**

**CNAME : 호스트 이름을 다른 호스트 명으로 변환**

MX : 메일 서버를 지정

SRV : 서비스의 위치를 지정

온프레미스 환경에서 클라우드 환경으로 바뀌는 시기

네트워크, 스토리지, 서버 를 알아야한다. 

Azure

VM 4개이상이 필수 광범위한 지식이 필요하다

클라우드 서비스 - 

개발자 - 서버 /네트워크를 알아야한다. 기본 - DNS NETWORK

서비스 엔지니어들은 이제 관리의할 필요가없다 -

 

www.multicampus.co.kr

root에게 물어본다 

클라이언트가 

케이알 네임서버밖에 모르겠다. 거기로 가봐라( 1차 도메인 - kr)

도메인을 신청하면서 dns서버는 azure에 있다. feat 도메인

웹서버 server1 IP : 10.10.10.10

1차 DNS 2차 DNS 3.4 중복 복제

FAIL나더라도 작동이 되게끔한다.

STUB ZONE = X

Internal DNS 서버에도 데이터가 남아있다 



---

# Review

일반적으로는 유니캐스트 데이터 전송방식을 취한다. 

패킷에 destination id 에 d클래스 ip 기입시. 브로드캐스트 멀티캐스트

127 - localhost 자신의 컴퓨터를 뜻함

Network ID를 가지고 해당 회사 Router를 찾아간다. (우편번호 - 동)

Host ID (번지)  H / N 식별할수 있는 식별자 - Subnet mask

GW / DNS 값을 넣어도 되고 안넣어도 된다.

게이트웨이 안넣으면 패킷을 외부전송, 통신이 불가능 함

DNS를 안 넣으면, IP를 못 넣으므로 통신이 되지 않는다. 

DHCP 서버 구현시, 

SM ( Subnet Mask ) 할당에 따라, 

하나의 네트워크 내에 너무 많은 host가 있으면 네트웤 성능이 떨어진다

255는 8비트가 전부 1 인거

N - 네트워크 ID

H - 호스트 ID

/16 - IP/ Subnet Mask 가 16비트 / 일반적으로 24 비트

하나의 비트 사용시 2개의 네트워크로 분할사용가능

network id = 128, ip를 세팅하지않는다

내부망에 있는private ip 는 public ip로 반드시 변환되어져 나가야 통신이 가능하다. < NAT >

what are Azure virtual network

AZURE에서는 29비트까찌만 나눌수 있다. 

VM 3개까지만 이 위에 올리수 있다. 

azure에서는 서브넷과 서브넷 사이에 라우터 없어도 라우팅을 알아서 해준다. 

public ip는 자의로 하는것이 아니고 ms에서 배포된 id를 사용한다

VM . 

부하분산 장치 - NLB

SUBNET & TUBNET 

205.33 - 터널링 세팅 구성점 / VERTUAL NETWORK

POINT TO POINT 각호스트에서 

SITE TO SITE 회사 라우팅을 해서 

AZURE 와 고

VPN : 방화벽, 침입 탐지 시스템과 함께 현재 사용되는 가장 일반적인 보안 솔루션중하나로, vpn을 이해하기위해선 internal network를 이해해야한다. 이는 기업 내부간 데이터 통신을 위한 네트워크로, 기업의 내부 네트워크에서 주고받는 데이터는 회사내의 업무 정보일 경우로, 외부에는 기밀정보이므로 사내 데이터 통신은 인터넷과 구분된 임대회선을 사용한다. 임대회선의 비용부담은 보안 솔루션 시장을 노출시켰는데 이것이 vpn

회사내 문제 발생시 외부에서 인터넷 통해 서버 접근시 보안상 문제 / 패킷을 스니핑 당할 확률 증가하지만 / 회사내 vpn 장비 마련, 외부에서 vpn 장비인증을 거쳐 내부 시스템 접근을 가능케하면 network traffic은 암호화 되어 이용자는 vpn인증과 함께 방화벽을 통한 서비스 통제, 접근 대산 서비스 인증을 거치므로 높은 보안성을 유지할수 있다. 

vpn은 인증을 제공키도 하지만 인증없이 터널링을 제공하여, 본점과 지점을 vpn이용하여 연결시 양측 사용자는 중간에 vpn장비가 있다는 것을 느끼지 못한다. 

최근의 네트워크에는 네트워크 통신을 위한 라우터, 스위치 이외 다양한 장비가 배치된다. 

WEB . APP . SQL TIER = 3 TIER

NETWORK SECURITY GROUP = AZURE의 방화벽

LOAD Balancer 

![](C:\Users\내문서\Desktop\인공지능 (딥러닝)\자료 사진 파일\Azure Load Balancer.PNG)

Frontend IP configuration (공인 ip)

load balancer 가 부하분담할 장치 vm 을/를 등록하는 것을 **backend pool**이라한다.

probes vm들의 상태를 체크해서 부하가 많이 걸렸는지 컨디션을 체크하는 것.

vm이 외부로 데이터를 내보내기위해서 공인ip로 패킷을 변환해서 내보내주어야함.

