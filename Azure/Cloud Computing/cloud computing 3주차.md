# 10979 - 07 Module 7

## Container & Serverless

SDC : Software Difined Compute

SDN : 

SDS :

 데이터센터 | 모든 하드웨어 풀링되어있다. (센터내 다양한 서버들이 많다)

서버 / 서버를 연결시켜주는 것 : 네트워크 장비 - pulling 

기업내 다양한 sisco, juniper 장비. 직접 command console 넣어 세팅하던 과거에서 원격으로 관리함. 

hyper - V ( VM - OS // 대용량 => Container ( 위에 Run TIME, APP 이 올라감, Serverless 기반으로 변모중 ) 를 각 서버에 올리고 전체 데이터 센터를 관리한다 => 확장 축소가 신축성있게 바뀔수 있다 ( 4세대 Data Center ) // 함수를 통해 계산하여 vm 없이 동작

Host ( hardware = CPU RAM LAN HDD ) 가 망가지더라도, 오류나더라도 host 내 container를 다른 host로 넘기기 위해서는 grouping 해야함 - clustering

container - Swam ( linux 기반, )

관리 솔루션 : System Center

Linux - KVM / Openstudio 

SDDC : Software Difined Data Center 

Windows - 2016,2019\ enterprise 

Container Engine 만 있으면 app에 대한 정보가 Binary

VM 자체가 대용량이므로, 



Docker - Container  구현 // 도커 엔진 ( 커널 os ) 

container image : hdd 에 저장된 실행되지 않은 file로 저장되어있는 파일 

docer registry : image를 담고있는 곳

공용 registry : docker hub = 컨테이너 이미지

docker 허브는 공용

container : container image ㅡ

docker container - docker file 실행 가능 = script  명령어로 인한 실행아 

* **introduction to docker 용어 정리**

docker CE : Test 환경



* docker 교재

도커 : 시작하세요! 도커

쿠버네티스 - Kubernetes in Action : 도커의 명령어 이해 사용

도커 사이트 docker hub ( 도커 이미지 저장 - 도커 실행시 하드디스크 안에 있는 이미지가 ) docker.com 

Azure Container RegIstry - Private 한 space // Image Storage

* Azure docker image

docker full - docer registry 에 만든 costomizing image를 다운로드 

doker tag - docker image의 virsion 생성시 사용, container - image 생성가능

docker push - pc 내 image를registry 로 업로드시 

docker run - pc에 다운받지 않앗더라도 docker hub 상 image를 다운받고 실행 => docker image 를 실행하라 / docker full 기능을 내포하고 있음 

docker rmi - image 삭제시 사용

docker rm - 실행(R)시켜서 메모리(M)에 있는 container 삭제

# Presentation

## - preparation -

- 5분 / **ms sql .. my sql** 데모 캡쳐!
- 소개 및 개념, 이론, 데모화면 ppt 캡펴 후 설명 10-20
- 발표자 소개 30초 
- ppt 첫페이지에 제목 이름필수

---

docker compose : 설치 

docker-compose.yml : 스크립트 / docker compuse up 



container-clustering : host | host | host | host => 서버를 그룹핑하는거 클러스터 . 하나의 서버 - 노드 => 4-node cluster 

cluster 구성시 호스트 오류시에도 노드를 다른 노드로 넘겨주는 fail over cluster => Data Center 필수

Docker management - kubernates cluster

AzureCotainerService

K8S 

Kubenetes 

Standard D2 v2 (2 vcpus, 7 GB memory)

```
az aks create --resource-group 20533E0703-LabRG --name 20533E0703-k8scluster --node-count 1 --node-vm-size "Standard D2 v2 (2 vcpus, 7 GB memory)" --generate-ssh-keys
```



---



---

# Test



**10979F 01-p4 **

**characteristics of cloud computing solution**

On-demend self service ( 자신이 원하는 서비스를 만들어 사용함 )

measured service ( 계산된 서비스 )

Cloud Service's cheap price reason Compared to ON-premise

- 장소
- 장비 ( server, storage, ups (항온, 항습)-정전기 / 녹)
- SoftWare
- 보안, 인건비
- 개발비

Advantages of 



**10979F 01-p5**

public cloud : vendor 가 제공하는 클라우드 서비스 

private cloud : on-premise 

AWS (2005) // 15years - **aws / gcp - public cloud solution** 

Amazon - 책 => 물류 => public cloud 

vm ware solution // dell // **private cloud solution**



**10979F 01-p6**

IaaS 

PaaS (JAVA .NET) - 

SaaS (Office 365)

![](C:\Users\user\Desktop\hojin\표(IaaS, PaaS, SaaS).png)



* 명령어 모임

ipconfig /all : tcp/ip 확인 

gpedit.msc : 로컬 그룹( 시스템 ) 정책을 보는 명령어 

ncpa.cpl : 네트워크 세팅을 빠르게 하는 방법 

netstat -an : 내 컴퓨터에서 누구와 접속하는지 확인 // #established - 접속되어있음 

* IP (호스트 주소, 네트워크 주소) / Subnet Mask / 게이트웨이 ( 외부 네트워크와 내부네트워크의 관문) DNS서버 
* FQDN - 전체 
* D

기본 방화벽 원격 세팅 NSG : TCP 3389 연결 포트

SQL -TCP 1433

MY SQL-TCP 3306

Web-app : PaaS 

Virtual Machine 

azure 1,2,3 예약 - 하나의 서브넷 내에 예약 되어있다

10.10.0.0

최소 서브넷 마스크 29 비트까지 세팅 ,

AAD 

MFA = 구현하기위해서는 Primium 1,2 에 맞는 요구사항을 갖추어야한다



**10979F 02 p27**

Azure 의 클래식 환경은 서비스 배포시 어려개의 서비스를 묵

ARM  : vm pi sc

classic - RBAC 전체 저장 / 



**10979F03 p10,11**

Rack - 서버들이 들어가있는 하나의 단위

fault domain

update domain : 한꺼번에 업데이팅하고 리부팅되는단위

**available set** - 99.95%

**available zone** - 99.99% ms가 보장 / 다른 데이터 센터 

- 부하 분산처리 장치 

Physical Datelink Network Trasport Session Presentation Application 

Load Balancer L4 ) TCP,UDP 의 포트에 대한 컨트롤

=> 데이터 센터 내에서, VM을 부하분산처리 담당

Traffic Manager L7 ) http, DNS 기반으로 부하분산처리 

=> 다른 Region에 있는 데이터 센터 내 부하분산처리 담당

 Loadbalancer에서 prove가 backend pull 뒤딴에 있는 vm 의 건강상태를 체크한후 살았으면 부하를 주고 죽었으면 다른 vm에게 부하를 줌



**20533E_02 P33**

Site-to-site (S2S) : 관리자가 라우터와 azure의 vn과 연결시켜 직접 터널링을 만듬

Point to Point : 한대의 컴퓨터에서 azure에 vn과 연결시켜 터널링을 만듬

express route : 가장 고성능, 고속으로 전용선을 깔아 회사의 전용선을 azure와 direct 연결

vnet to vnet : 같은 데이터 센터 내 vnet끼리 연결하는것

**peering 구성** 

**VPN** 

터널링 기술 : Protocol 

PPTP : 초기사용 보안가장취약 이제안씀

 L2TP : IPSec과 연동

SSTP : TCP 443포트 하나만 열면됨

IKE v2 : 가장최신 Connection 끊어져도 서버에서 알아서 reconnect함.



NAT : 사설 IP를 인터넷 망으로 내보낼때 공인 IP로 변환하여 내보내는 기술



**=====Az 모듈 설치 ========== 순서문제**
정보 URL : https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-1.8.0&viewFallbackFrom=azps-1.2.0
Install-Module -Name Az -AllowClobber	# Az 모듈 설치
Set-ExecutionPolicy Unrestricted		# 실행 정책 허용
import-module Az.Accounts			# 모듈 등록

Connect-AzAccount
Get-AzSubscription
Select-AzSubscription -Subscription <Subscription ID> 

**10979F 04** 

**사설 ip 대역 문제** ( 나머지는 공인 ip)

10.0.0.0 - 10.255.255.255 ( 10.x.x.x)

172.16.0.0 - 172.31.255.255

192.168 .0.0 - 192.168.255.255



**20533 07 p10**

docker compose

docker-compose.yml : 여러가지의 docker 이미지를 정의한 스크립트 파일 

docker-compose up 명령어 : directory file이 있어야함 (yml이 작동)

p20 ) Kubernetes 컨테이너 배포 단위 POD : Container 들의 묶음 

swarm 의 모든기능은 Kubernetes안에 들어감

registry : docker image 저장소 

public image : docker hub 

private image를 구성해야할 경우 azure registry service 를 사용하면 가능, 

registry upload시 사용 명령어 : docker push

docker pull 

docker run : docker pull에서 가지고와서 실행까지 하는것 

















