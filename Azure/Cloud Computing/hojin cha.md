실행창 - ncpa.cpl (네트워크 연결창)
ctrl R

cmd - ipconfig /all - ipv4주소 기본설정 이 떠야 정상
(중복 이라고 뜨면 충돌 발생 의미)

ping 8.8.8.8 구글 dns 서버주소에 핑 넣기
..........................................
TCP / IP
자동 구성 : DHCP Server 로부터 할당 받는 구성
수동 구성 : 직접 셋팅하는 구성 (고정 ip)
	IP
	Subnet Mask
	Gateway
	DNS
..........................................
net use v : \\70.12.113.130\share - 네트워크에 공유된 컴퓨터에 접속하겠다, 
10979f - 작은교재 (기초)
10533 - 큰교재 (디테일)
...........................................
클라우드 컴퓨팅 979과정

최신기술) 클라우드 서비스 - 쓴만큼 비용첨부 -> 에이저 서브 스크립션 가격첨부 단위 
POWERSHELL - 관리 한계 가 있다, 관리 한계 이유 - 서버 백대 천대, 네이버 이만대 - 하나의 명령어로 서버 컨트롤이 가능, 그래픽 환경에서는 불가능 , 다수의 서버관리 시 POWERSHALL 이용. 
CLI 유사. 윈도우 파일 관리 - POWER SHALL 
클라우드 베이스 서비스 관리 - CLI 
VM 가상머신 디스크 스토리지 (가상공간) 관리 
웹 페이지 웹사이트 만들고 모니터링 한다 
*각 각의 클라우드 서비스 장점 파악 
가상 네트워크 
*컨테이너 서버리스 - VM위에서 작동 되는 클라우드 서비스는 4세대 가상화 의 핵심 - 도커 서비스 - 함수에 의해 작동 
AZURE AD - 기존 기업내 AD 의미 파악
.............................................
가상화 ( LOCK 해제 ) 구현 
EX) OS는 하드웨어에 락킹이 걸려있다. 가상화 사용시 하나의 하드웨어에 여러개의 OS를 올릴수 있는데 이를 VM이라 한다. 원래는 하나의 하드웨어에 하나의 OS 가 걸린다 ( 종속적 )
APP은 OS에 락킹걸려져있다. 프로그램을 OS 에서 분리시킬수 있다. VM은 다른 하드웨어로 가져갈수 있다. 앱도 다른 OS 로 가져갈수 있다. ( PORTABLE APP ) 종속적이지 않고 설치 하지않고 가져갈수 있음을 나타냄. MOBILITY LOCKING을 해제하는 과정 / 
여러개의 하드웨어 (SERVER) 간 VM 이동성 존재. EX) 사용자 과다시 VM이 계속이동하여 확장된다. UTILIZATION 불필요한 사용치않는 서버는 전원을 내림. 고로, 데이터센터는 유연하게 확장, 이동하게 된다. 
전기료 절감 가능. 메인 프레임서버 (유닉스) 전기료 매우크므로 시스템 TURN OFF 가 불가능. 기존의 유닉스 시스템 - 성능, 안정성 우수 / 전기료 증가. 가상화를 통한 자율적 전기사용 관리 시스템. 데이터센터의 가상화 환경화 
가상화의 클라우드 개념 - 데이터센터 자체가 가상화되어 있음

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

VM (Virtual Machine ) : HYPER-V에 설치된 OS
1. WS2019 (윈도우 서버)
2. CentOS (리눅스)
- 오픈소스 개발 AI 빅데이터 기본적으로 리눅스위에서 서비스 올림
HOST OS : 실체 하드웨어에 설치된 OS
Guest OS : VM 를 가리킴. 
밑단 하드웨어 위에 하이퍼바이저라는 커널 위치 그 위에 VM위치 ( OS에 해당 ) 

1세대 VM : 바이오스, E-IDE ( 0:0 ) <==OS 32. 64BIT 운영체제 설치시, ID 를 사용 (에이저 지원)
2세대 VM : 펌웨어, SCSI <==OS 64BIT ONLY 시큐어 부팅 가능, (에이저 비지원)

실제 메모리를 공유하므로 넉넉한 메모리 공간 필요 (많게는 2기가까지 사용가능)
가상 하드디스크(파일) 
	확장자 
	vhd : 2008에서 지원 <== Azure ( 이를 통해 파일 이동 가능. vhdx를 vhd로 변환하여 Azure 로 업로드 시켜줘야 가능 )
	vhdx : 2012, vhd보다 30% 성능 빠름 4KB - 64TB
...............................................
APP (프로그램 어플리케이션)
OS (운영 체제) 
하드웨어 CPU RAM HDD LAN -> 시스템 성능 좌우 4대 요소 / 하나라도 성능 떨어지면 서버 전체 성능 저하 
.............................................
active directory 
- git hub !! 프로그램 검색 
C:\Users\user>net use v: \\70.12.113.130\share /user:a a

www.centos.org / RedHat Enterprise Edition의 무료버젼 


IT 부서 : 정보의 소통, 교류를 담당 / 협업 
하나의 컴퓨터에서 여러개의 운영체제를 사용하는것 
윈도우 서버- desktop experience - GI 3번째는 그냥 명령 프롬프트 만 뜬다

Azure 내에서 암호 복잡성 요구 : (기업내에서)
대문자 소문자 특수문자 숫자 중 3가지가 조합된 암호 (Domain 환경)
* Pa55w.rd
 IPv4 Address. . . . . . . . . . . : 192.168.6.99
 mstsc /v:192.168.6.99
 (원격데스크톱 연결 명령어)
administrator

모든 서버는 스크립트 화 할수 있다. 많은 서버를 쉽게 관리가능케함 
with 하나의 명령어로 
192.168.6.106
Q740PFYIYRTKQH8TYF

WINDOWS : 원격 데스크톱 연결 (TCP 3389) GUI

* 클라우드 컴퓨팅이 가지는 이점 
에이저가 무엇이냐 
클라우드 서비스의 유형 

클라우드 컴퓨팅 의 특징 
-자기가 만들어 사용하는 서비스 on-demand self service
-광범위 개념 : 네트워크를 통해 받는 모든 서비스 
클라우드 활성화 의 근본 원인은 네트워크 덕분 
이에 따라 자율주행 ai 가 가능함. 
-resource  pooling  서버 만대가 하나로 pulling / grouping / clustering 서버가 로지컬하게 하나로 그룹핑 되어있다. 
compute(서버) 계산 / 연산 
storage 전체 스토리지가 그룹으로 묶여져있다. network 자체로 pulling 되어져있다. 추상화 되어 있다. 
rapid elasticity (신축성) 
하나의 vm 에 많은 사용자가 사용하므로 recource를 많이 씀. 
적을때는 recource를 적게 쓰고 

클라우드에서 만들어져있는 것 가져다 쓴다
서버
스토리지
네트워크
운영체제 
개발
데이터 베이스
패치 

모든 관리 클라우드로 가능 
146개 서비스 중 택해라 

클라우드 컴퓨팅 모델 : 퍼블릭 / 프라이빗 
azure / aws / gcp - public cloud 
클라우드 환경으로 바꾸려면 서버들은 서버대로 묶여 잇다. 회사의 데이터 센터를 
회사의 클라우드를 온프레미스 클라우드 (vm -> public pre)
벤더들의 클라우드 
Azure stack - 
클라우드 만든다 - 
146개의 서비스 / IaaS PaaS SaaS 
기업 - 온프레미스 클라우드  / 개인 퍼블릭 크라우드 
SOFTWARE DIFINE NETWORK 
스토리지 서버 네트워크 모두 하나로 그룹핑 하는 것 
서버 - SDC /SDS 소프트웨어로 정의된 서버
SOFTWARE DIFINE DATE CENTER - ELASTIC 하다. 확장성, 신축성있다. 
PRIVATE 클라우드 
서버 위에 하이퍼바이져 ( VIRTUALIZATION )
그 위에 VM ( O/S ) 부터 middleware, runtime, date, appplication 까지 관리 
노란 부위가 벤더들이 관리 하는 영역 그 위는 나의 managing 
office 365 -  SaaS Service 
iaas - > COSTOMISING 할수 있다. paas 차이점 
대표적으로 vm 으로 가상머신만든다 - iaas 가상화가 있고 os 부터 app 단게 os 패치 / 보안관리 - my managing 
paas 
os patch / run time 에 대한 보안관리 - vender's share 
vender's share 은 untouchable field

AAD - DS -> IAAS
SQL 서비스 - 
VM -용량이 매우크다 (3세대) COMPUTE SYSTEM  계산 해서 나온 결과 값을 가져와서 다시 APP에 주는 
DOCKER( CONTAINER SERVICE )VM위에 APP을 SERVICE 하는것. 
NETWORKING SERVICE 의 대표들 
