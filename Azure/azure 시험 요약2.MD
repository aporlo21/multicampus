## 시험 요약

## Cloud computing 의 특성 (10979F 01-p4)

- On-demand self-service : 자신이 필요한 서비스 직접 만들어 사용
- broad network access : 네트워크로 접속
- resource pooling : 리소스들은 'pooling' 되어 있음
- rapid elasticity
- measured service : 서비스마다 과금
- On-demand 일때 필요한 것
  1. 장소
  2. 장비 (온도,습도 유지, Network 회선)
  3. SW
  4. 보안
  5. 개발 비용

## Cloud computing 의 이점

- broad range of managed services : cloud vendor 가 관리해준다
- minimized capital expenses : 비용 적게
- lowered operational expenses : 관리 이슈가 적다
- improved agility : 확장성 좋음
- usaged-based billing model : 사용한만큼 비용 지불

## Cloud computing 의 모델 (10979F 01-p5)

- public cloud : vendor 가 제공해주는 서비스 

  ​	ex) AWS(2005년 시작), Azure, GCP(Google)

- private cloud : On-premise 환경을 cloud 로.

  ​	ex) HyperV(MS), KVM(Linux), openStack(Linux), VMware(Dell)

- hybrid cloud : 기업내 private cloud 를 public으로. 반대도 가능

  ​	ex) **Azure Stack**

  > MS만 private/public cloud solution을 모두 가지고 있음

## Types of cloud services (10979F 01-p6)

- IaaS PaaS SaaS 구분

  ![](C:/Users/%EB%82%B4%EB%AC%B8%EC%84%9C/AppData/Local/Temp/_AZTMP0_/images/2019-5-7/8.png)

- IaaS

- PaaS (ex JAVA .NET)

- SaaS (ex Office365) : 관리 가장 쉬움

## 명령어

- ipconfig /all :TCP/IP 확인

- gpedit.msc : 로컬 그룹 (시스템) 정책 편집

- ncpa.cpl : 네트워크 연결창 열기 // 네트워크 세팅을 빠르게하는법

- netstat -an : 연결상태 보기 // 내 컴퓨터에서 누구와 접속하는지 확인

  ​	[LISTENING] : 현재 열려있음

  ​	[ESTABLISHED] : 현재 연결돼 있음

## Ipconfig /all

- IP 주소는 네트워크 주소와 호스트 주소로 이루어져있다. 이 둘을 구분하기 위해 Subnet Mask 필요.
- 게이트웨이 : 외부와 내부 네트워크 사이의 관문
- DNS 서버 : FullyQualifiedDomainNeme(전체도메인주소) 을 ip로 변환해주는 역할(이름 풀이)

## 방화벽 세팅

- **Windows** 원격 접속 포트 RDP // 기본 방화벽 원격세팅 NSG : **TCP 3389**
- **SQL** 접속 포트: **TCP 1433**
- **MySQL** 접속 포트 : **TCP 3306** 
- **Linux SSH** 접속 포트 : **TCP 22**

## Web App 

--> PaaS

## Ip

- private ip : 10.10.0.0/24, azure 는 1,2,3 포트 예약되어 있음. 0과 255는 기본 예약
- azure의 최소 서브네팅 마스크는 29bit 까지. /29

## AAD

- MFA (Multi Factor Athentication) : 다중(다단계) 인증
  - 요구사항 : Subscription - Premium 1 or 2이어야 한다.

## ARM (Azure Resource Manager)

- **Classic** : 
  - 여러개의 서비스(VM, Vnet, NSG 등등)를 Grouping 해서 한꺼번에 배포
  - 태그 지원 안함
  - 제한된 RBAC
  - template 배포 x
- **ARM** : 
  - 여러개 서비스를 각각의 서비스로 분리해 배포 가능
  - 태그 지원함 
  - fully RBAC
  - template (json) 배포 가능

## Azure Availability 10979F 03 p10,11

- 오류가 생겨도 다른 서버를 이용할 수 있도록 함

- **availability set** (99.95% availability = 1년 중 15분 다운됨을 허용)

  - fault domains : 'Rack'. 서버들이 들어가 있는 박스

    ​	ex) 2로 설정시 복제본 랙 2개가 존재하는 것

  - 최대 3개까지 구성 가능

  - update domains : 동시에 리부팅 되는 도메인 단위

- **availability zone** (99.99% availability)

  - 다른 data center 에 복제해 두는 것

## Load Balancer vs Traffic Manager

| Load Balancer                                    | Traffic Manager            |
| ------------------------------------------------ | -------------------------- |
| Layer4 (Transport Layer)                         | Layer7 (Application Layer) |
| TCP/UDP 기반 분산처리                            | HTTP/DNS 기반 분산처리     |
| Data Center 내 부하 분산                         | Region 간 부하 분산        |
| probe 가 백엔드풀 내 vm 상태 체크, 부하 할당결정 |                            |

## OSI 7 Layer

| OSI 7 Layer                      |
| -------------------------------- |
| 7. Application (http, DNS, SMTP) |
| 6. Presentation                  |
| 5. Session                       |
| 4. Transport (TCP, UDP)          |
| 3. Network (ip)                  |
| 2. Datalink                      |
| 1. Physical                      |



## Azure virtual network connectivity options (20533E_02 P33)

![](C:/Users/%EB%82%B4%EB%AC%B8%EC%84%9C/AppData/Local/Temp/_AZTMP0_/images/2019-5-7/9.png)

- **P2S (Point-to-Site)** : 개별 컴퓨터(개인PC)에서 Azure 의 vnet 과 연결하고 터널을 만드는 기술
- **S2S (Site-to-Site)** : router 단에서 Azure의 vnet과 연결하고 터널링.
- **ExpressRoute** : 가장 성능 좋고, 보안 가장 좋음. '전용선' 설치. Azure와 direct 연결. 10G 보장
- **VPN** : 외부 컴퓨터로부터 터널을 뚫어서 그 회사에 있는 것처럼 하는 기술
  - PPTP : 초기사용. 보안 가장 취약. 이제 안씀
  - L2TP : IPSec 과 연동.
  - SSTP : TCP 443 포트 하나만 열면 됨.
  - IKEv2 : 가장 최신. (기차 이동중) connection 이 끊어지더라도 서버에서 알아서 re-connect 하고 세션을 새로 맺는다. 사용자는 신경쓸 일 없음.
- **peering** : 같은 데이터 센터 내 vnet 끼리 연결하는 것
- **vnet-to-vnet** : 다른 데이터 센터 간 vnet 끼리 연결하는 것

## NAT (Network Address Translation)

: 사설 ip를 인터넷 망으로 내보낼 때 공인 ip로 변환하는 기술

## Powershell, CLI, Cloudshell

<u>명령어 외우지 말고 순서만 기억할 것.</u>

Install-Module -Name Az -AllowClobber	# Az 모듈 설치
Set-ExecutionPolicy Unrestricted		# 실행 정책 허용
import-module Az.Accounts			# 모듈 등록

Connect-AzAccount
Get-AzSubscription
Select-AzSubscription -Subscription <Subscription ID> 

- 설치 -> 실행 정책 허용 -> 모듈 등록 

  (CloudShell 에서는 모듈설치/import 필요 없음. 로컬에서만 설치)

- Connect - Get구독 - Select구독

## 사설 ip 대역 (10979F 04)

| private ip                    |
| ----------------------------- |
| 10.0.0.0 ~ 10.255.255.255     |
| 172.16.0.0 ~ 172.31.255.255   |
| 192.168.0.0 ~ 192.168.255.255 |

* 나머지는 PUBLIC ip

## subnet mask 몇 bit? 문제

## Docker (20533 07 p10,20)

- Docker compose : docker 배포 시 스크립트 형식으로 여러 작업을 한번에 할 수 있게 도와줌
- **docker-compose.yml** : 여기에 정의해 둔다.
- 여러가지의 docker image를 정의한 script file



  ![](C:/Users/%EB%82%B4%EB%AC%B8%EC%84%9C/AppData/Local/Temp/_AZTMP0_/images/2019-5-7/10.png)

  (이런 형식)

- **docker-compose up** : 이 명령어로 docker-compose.yml 확인 후 필요한 것들(ex. 이미지) 실행시켜준다. (directory file이 있어야함/yml이 작동)



- **resgisty** : docker image 저장소
- public image : docker hub
- private image 구성해야할 경우 azure registry service 사용하면 가능
- registry upload시 사용 명령어 : docker push 
- docker pull
- **docker run** : docker pull에서 가지고와서 실행까지 하는 것

## Creating and managing an AKS cluster

- Kubernetes(K8S) : pod 단위(container) 로 관리
- Swarm : Kubernetes 하위 호환. 요샌 안씀.
- Registry : 도커 이미지를 저장하는 저장소
  - **public image** : docker hub 에 저장되어 있다.
  - **private image** : azure registry service 사용해서 저장하면 된다.
  - **docker push** : registy upload시 사용명령어
  - **docker run** : registry 로부터 이미지 pull 함과 동시에 실행