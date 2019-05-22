# Azure



## Module 1.Getting Started with Microsoft Azure(2019.04.23,2019.04.24)

- IP세팅 

  window 실행 - ncpa.cpl - 네트워크 연결 켜짐.

  cmd -> ipconfig /all - 네트워크 설정 확인하기 

  ping 8.8.8.8 => 구글 DNS 서버로 ping 보내기 

- IP 구성

  자동 : DHCP서버 이용(임대 시간을 이용해 오랫동안 사용하지 않는 IP를 다른 컴퓨터에 할당해 효율적으로 IP사용)

  수동 (고정) : IP, Subnet Mask,Gateway, DNS
  
- net use v: \\70.12.113.130\share - 네트워크 공유 명령어

- MS 계정 생성 - siler2312@gmail.com 

- 가상화 구현 

  - Type 1 가상화 (실제 서비스) :MS - Hyper-V, VMware vSphere, Xen, KVM 

    ​	CPU : 가상화 지원, RAM(DEP 지원)

    ​	CPU, RAM, HDD, LAN

    기존 OS구조는 HW에 locking 이 되어 있어서 하나의 HW는 하나의 OS만 사용 가능 

    동일하게 App은 OS에 lock이 걸려있음  

     => mobility 가 없음. 

    ![1555982496283](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1555982496283.png)

    VM구조는 해당 locking을 해제하여 2개 이상의 OS를 사용 할 수 있게 해줌. 

    ![1555982624267](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1555982624267.png)

    만약 하나의 서버에 vm이 여러개라면(사용자들이 많아지면) 다른 서버로 vm을 이동시킴. 

     => 확장성, 서버의 utilization 을 극대화함. 불필요하면 서버를 사용하지 않음. 

    데이터셋의 elastic성 증진. 

    기존 Unix와 같은 메인 프레임서버는 전기료가 많이 나오지만 중요한 시스템이라 종료할 수 없음. 

    

    ***따라서 가상화를 사용하여 전기료 절감하고 서버를 효율적으로 사용.***

    

  - Type 2 가상화 (테스트, 개발) : Oracle VirtualBox, VMware Player 

    

- Hyper -V : VM을 전체적으로 관리하는 kernal

  - Hyper-V 설치하기 : 제어판\프로그램 - windows 기능 켜기/끄기 - Hyper-V 체크
  - 64비트에서만 가능하고, Home edition에서는 지원안함.	
  - 작업관리자 -> 성능 -> 가상화 사용으로 되어있는 지 확인 
  - 시작 -> Hyper-V관리자 검색, 접속 
  - VM( Virtual Machine ) : Hyper-V 에 설치된 os 
    - Host OS : 실체 H/W에 설치된 os
    - Guewst OS : VM웨어에 설지된 os 

![1555982985453](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1555982985453.png)

- VM 설치하기

  1. WS2019

     - Hyper-V 관리자 -> 이름 및 폴더 지정 -> 새로만들기

     - 네트워킹 - default 스위치

     - 1세대 VM : 바이오스, E-IDE( 0:0 ), IDE 컨트롤러 <== OS, 32bit, 64bit

     - 2세대 VM : 펌웨어( secure booting 가능 ), SCSI <== OS,  스쿼시 컨트롤러, 64bit

     - 가상 하드디스크 연결 - 가상 하드디스크 만들기  -> 이름의 확장자가 .vhdx이어야 함. 

       ​	- vhd : 2008에서 지원 <== Azure로 이동 가능한데 vhd로 변환한 후 이동.   

       ​	- vhdx : 2012, vhd보다 30% 빠름
     
     VM 우클릭 설정 -> IDE 컨트롤러 -> 이미지 파일에 운영체제 파일 넣어주기 -> 확인하고 VM더블클릭해서 실행 
     
     <https://docs.microsoft.com/ko-kr/sysinternals/downloads/ 	// 시스템 관리 툴 
     
      -> Sysinternal Suite 다운 
     
     암호 복잡성 요구 : 대문자, 소문자 ,특수문자, 숫자 중 3가지가 조합된 암호(Domain 환경)
     
     // 작업그룹 환경일 때는 요구하지 않음.  - Pa55w.rd
     
      mstsc /v: 192.168.240.253 or 배치파일 만들기 or 제어판의 원격 데스트톱 접속 - TCP 3389
     
  2. CentOS

     리눅스 서버는 putty 를 통해 원격 접속 가능, shutdown -r now
     
  3. 원격관리 
        
        - Windows : 원격 데스크톱 연결 (TCP 3389) <= GUI
        
          Linux      : SSH (TCP 22)		        <= CLI

- 명령어 배치파일로 만들기

   메모장 열어서 명령어를 적고 "파일이름.bat"로 저장하여 파일을 실행하면 해당 명령이 실행됨. 

### Lesson 1. What is Cloud Computing 

1. 클라우드 컴퓨터의 특징

   - 만들어진 서비스를 선택해서 사용 가능 

   - 네트워크로 연결하는 것

   - 자원 pooling( network는 network대로 묶고, storage는 storage대로 묶고, server)

   - elasticity 적게 쓸 때는 적게 , 많이 쓸 때는 큰 장소르 제공 

   - 적은 요금

     

2. Cloud-computing models

   - Private cloud : 온프레미스의 데이터셋을 클라우드로 만듦. 장비들을 pooling할 수 있음. "자체구축"한다는 점이 중요함

   - Public cloud : vendor가 서비스하는 클라우드

   - Hybrid cloud : pivate + public cloud

     

3. Types of cloud services ( 관리 레벨의 차이 )

   - 소프트웨어 정의 데이터센터(Software Defined Data Center, SDDC) - pooling

     Networking, Storage, Servers를 각각 pooling(통합)하여 추상화시켜 관리하는 것을 Private 클라우드라고 함.

     각각 SDN , SDS, SDC(Software Defined Compute) 라고 함. 

   - Iaas( Infrastructure as a Service ) : Servers, Storage, Networking, Virtualization을 vendor가 함. ex) VM

   - Paas( Platform as a Service ) :  Iaas + O/S, Middleware/ Runtime  

   - Saas( Software as a Service ) : Paas +  Data, Application ex) office 365

![1556007409432](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1556007409432.png)



- Host : 네트워크의 장치( 컴퓨터, 프린터, 라우터, 스위치 )

  라우터 : 네트워크의 경계선을 정해줌. 

  Gateway로 패킷을 수송신할 수 있음. 라우터에서 gateway 를 정해줌.  

### Lesson 2. What is Azure?

- Azure Datacenters

  - pairing으로 이루어져있고, 대부분 같은 지역의 counterpart가 있음. 
  - 재난 복구 상황을 대비하기 위해서 pair로 만들어짐.

- Availability 

  - Availability zone 을 셋팅 시 99.99% SLA 보장, 다른 데이터 센터로 복제 
  - Availiability set : 99.95% SLA, 데이터 센터 내의 lack 단위, 하나의 데이터 센터에서의 렉 단위 

- Azure Service : 계산과 저장 서비스를 제공하는 서비스의 집합.

  1. Compute

     Container Instance, Azure Virtual Machines

  2. Networking

     Virtual Network, Traffic Manager, Load Balancer

  3. Data&Storage

     Storage

  4. Web&Mobile

     Web apps

  5. Others

     Azure AD, Site Recovery

- Azure Management Models

  1. Classic(Azure Service Management)

     기존 클래식 모델은 확장성이 좋지 않아 ARM으로 변경됨.

  2. Azure Resource Manager ( ARM )

     관리범위의 개념을 기본으로 함.

     tagging기능을 지원함.

     기본 템플릿을 제공하여 배포 가능

     full RBAC 기능을 지원함.  ( 용어 정리 5번)

### Lesson3. Managing Azure

- Azure portal : https://portal.azure.com

  Azure Account Center : https://account.windowsazure.com

- Azure Management tools

  - powershell : 동사 + 명사
  - CLI : set of command  
  - cloud shell : 포털에서 사용하는 shell  - powershell or bash 사용 가능, 별도의 인증 과정 필요 없음,  애저 저장소에 있는 file share가 필요함.
  - Visual Studio with Azure SDKs
  - Azure Cloud Shell
  - Azure Security Center
  - Azure Advisor
  - Azure Monitor

- Private IP의 1~3은 azure가 사용, 사용자는 4부터 255까지 사용 가능 

  IP forwarding : 공인 IP로 접속하면 사설 ip로 변경해주는 활동 

  

## Module 3. Virtual machine in Microsoft Azure

- 가상 디스크 타입 (확장자 vhd(2T), vhdx(64T, 백업 기능 있음), vhds)\

  실제 서비스는 고정디스크로, 테스트나 개발은 동적 확장, 차이점 보관용 

  - 고정 디스크 : 80GB로 만들 경우 ~~80GB~~

  - 동적 확장 : 80GB로 만들 경우 4MB -> 80GB

  - 차이점 보관용 : Base에서 변경된 내용만 저장 

    

### Lesson 1.  Creating and configuring Azure VMs



- 확장 가능, 온프레미스에서 다른 클라우드로 이동 가능, 제품 런칭, 테스트, 개발 가능 

- Azure VM의 특징

  -  2세대 Hyper-V 를 지원하지 않음. 
  - .vhdx 파일 포맷 지원안함. 
  - 동적 확장이나 디스크를 바꾸는 것이 허용안됨.
  - 읽기 전용 VM을 만들 수 있다. 

-  VM size

  - general purpose : 메모리와 cpu의 밸런스를 맞춘 VM
  - Burstable(B) : CPU를 적게 씀.
  - Compute optimized(F, Fs, F sv2) : 높은 cpu와 메모리 
  - Memory Optimized : 높은 메모리와 cpu의 조화
  - Storage optimized : high performance
  - GPU support
  - High performance compute(H)  : 가장 빠른 CPU, 
  - ![1556101732882](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1556101732882.png)

  

- 3 fault 도메인(3개의 렉)에 분산해서 저장, 따라서 하나의 전원이 끊겨도 다른 도메인에서 서비스 가능하도록 함.  update 도메인은 패치 이후에 리부팅하는 단위를 update 도메인이라고 함. 지속적인 서비스 가능 

- VM 접근하기

  - Windows VMs : RDP(TCP 3389번 포트)를 통해 접근 가능

  - Linux VMs : SSH( TCP 22번 포트 )로 명령어로 접근, RDP 그래픽 환경으로 접근.

  - portal에서 해당 가상 머신으로 접속 한 후 왼쪽 탭에서 네트워킹을 선택하면 

    방화벽 설정 가능. 보통 방화벽은 들어오는 패킷에 대해서 적용하고 나가는 패킷에 대한 규칙을 심히 지정하지는 않는 편. 



### Lesson 2. Configuring Azure VM storage

- Azure VM storage

  - C:\  - 기본 드라이브, OS 설치

  - D:\  - 기본 드라이브, 임시 디스크, 데이터가 저장되지 않음. 

    페이지 파일을 저장하여 가상 메모리 영역이라고 할 수 있음. (용어 정리 7번)

  - F:\  - 추가적인 드라이브

  - 

![1556094320997](C:\Users\wtime\AppData\Roaming\Typora\typora-user-images\1556094320997.png)



- azure 리눅스 VM 접속하기 

  ssh jyp@rhel76jyp.eastus.cloudapp.azure.com

  yes 입력 -> 비밀번호 입력 



