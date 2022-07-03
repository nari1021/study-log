# 1장 쿠버네티스와 마이크로서비스

## 1. 마이크로서비스와 데브옵스

- Microservice(마이크로 서비스)
  애플리케이션이 느슨히 결합된 서비스의 모임으로 구조화하는 서비스 지향 아키텍처(Service-Oriented Architecture) 스타일의 일종인 소프트웨어 개발 기법
- Service-Oriented Architecture(서비스 지향 아키텍처)
  네트워크에서 공통의 통신 언어를 사용하는 서비스 인터페이스를 활용하여 소프트웨어 구성 요소를 다시 사용할 수 있게 만드는 소프트웨어 설계 유형
- DevOps(데브옵스)
  - 소프트웨어의 개발(Development)과 운영(Operations)의 합성어로서, 소프트웨어 개발자와 정보기술 전문가 간의 소통, 협업 및 통합을 강조하는 개발 환경이나 문화
  - 개발조직과 운영 조직이 물리적으로 격리되지 않는 환경에서 개발, 테스트, 배포, 운영에 이르는 전체 생명주기를 서로 긴밀하게 통합하여 관리

## 2. 가상화와 컨테이너

< 컨테이너의 장점 >
- 기민한 애플리케이션 생성과 배포
- 지속적인 개발, 통합 및 배포
- 개발과 운영의 관심사 분리
- OS수준의 정보와 매트릭을 넘어서 애플리케이션 헬스와 그 밖의 시그널을 볼 수 있다.
- 개발, 테스팅 및 운영 환경에 걸친 일관성
- 클라우드 및 OS 배포판 간의 이식성이 높다
- 애플리케이션 중심 관리
- 느슨한 연결, 분산, 유연성, 자유로운 마이크로 서비스
- 자원 격리를 통해 애플리케이션의 성능 예측 가능
- 자원 사용량 (고효율, 고집적)

## 3. 컨테이너 오케스트레이션

- 일반적으로 애플리케이션은 의도에 따라 애플리케이션이 실행되게 하기 위해 네트워킹 수준에서 정리가 필요한 개별적으로 컨테이너화된 구성 요소
- 컨테이너 배포 관리는 흔히 컨테이너 오케스트레이션(Container Orchestration)이라 한다.
- 목적은 여러 컨테이너의 배포 프로세스를 최적화하는 것
- Apache Mesos, Google Kubernetes, Docker Swarm 등의 플랫폼은 각자 컨테이너 관리를위한 자체적인 특별한 방식을 보유하고 있음

### 컨테니어 오케스트레이션의 기능

- 컨테이너형 애플리케이션의 배포
- 컨테니어 그룹에 대한 로드밸런싱
- 스케일링/오토스케일링
- 컨테이너 장애 복구
- 컨테이너 그룹간 격리/연결
- 외부로 서비스 노출
- 서비스 디스커버리
- 로그 수집 집중화/자동화
- 모니터링 집중화/자동화

### Kubernetes

- 컨테이너화된 워크로드와 서비스를 관리하기 위한 이식성이 있고 확장 가능한 오픈소스 플랫폼
- Deploy, Automation, Scaling, Containerization 된 애플리케이션의 관리를 위한 오픈소스 시스템
- 여러 클러스터의 호스트간 애플리케이션 컨테이너의 배치, 스케일링, 운영을 자동화하기 위한 플랫폼 제공
- 쿠버네티스는 크고, 빠르게 성장하는 생태계를 가짐
- 쿠버네티스라는 명칭은 키잡이(helmsman)이나 파일럿을 뜻하는 그리스어에서 유래
- 구글이 2014년에 쿠버네티스 프로젝트를 오픈소스화 함

### Docker Swarm

- 여러개의 Docker 호스트를 함께 클러스터링하여 단일 가상 Docker 호스트 생성
- Host Os에 Agent 만 설치하면 간단
- Docker 명령어와 Compose 를 그대로 사용가능

### Apache Mesos 

- 수만 대의 물리적 시스템으로 확장 가능하도록 설꼐되어 있음
- Hadoop, MPI, Hypertable, Spark 와 같은 응용프로그램을 동적 클러스터 환경에서 리소스 공유와 분리를 통해 자원 최적화 가능
- Docker 컨테이너를 적극 지원