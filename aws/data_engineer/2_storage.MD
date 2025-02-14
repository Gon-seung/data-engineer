## S3
- 저장소, 백업, 회복, 하이브리드 클라우드 저장소, 어플래케이션 호스팅 등에 사용
- bucket에 파일을 저장. 버킷은 디렉토리랑 동일한 개념
- 버킷명은 글로벌에서 유일해야함 (모든 지역 모든 계정) 
- 버킷은 지역 레벨로 정의됨. 지역에서 생성됨
- 명명 규칙
    - 대문자 불가, 밑줄(_) 불가
    - 3 ~ 63자 길이
    - 지적 재산권은 안됨
    - 소문자나 숫자로 시작해야함
    - 글자 숫자 하이픈으로 끝나야함
- object(file)은 key를 가짐
    - key는 FULL path임 (ex s3://my-bucket/my_file.txt)
    - 최대 사이즈는 5TB
    - 5GB 이상의 경우 여러부분으로 나눠서 올려야함. 
    - metadata를 가짐. key-value 형태로 file의 요소를 저장함 (tag, unicode key, lifecycle 등)

## S3 보안
- 보안 종류
    - 유저 기반
        - IAM 정책 - 특정 유저만 가능하도록 설정
    - resource 기반
        - bucket 정책 설정
        - Object ACL (access control list) - 일반적, 비활성화 가능
        - Bucket ACL - 희귀함. 비활성화 가능
    - 암호키 - object를 암호화
- json 형태임
    - bucket과 object
    - allow or deny가 가능
    - 계정 or 유저에 정책 적용 가능

## S3 versioning
- file의 버전을 정할 수 있음
- bucket level에서 활성화 가능
- version 복구가 가능
- versioning을 비활성화에서 활성화로 바꾸면 모든 object는 null이 됨
- versioning을 활성화에서 비활성화되어도 기존 object의 버전은 유지됨

## S3 - Replication
- source와 target bucket의 Versioning을 켜야 활성화 가능
- CRR (Cross Region Replication)랑 SRR (Same Region Replication)가 존재
- 다른 aws 계정끼리도 설정 가능
- CRR - 호환성 도움, 대기 시간 엑세스, 지역 간 데이터 복제 가능
- SRR - S3의 로그 집계 가능. 고유의 테스트 환경 구축 가능
- 복제 설정 이후, 새로운 object만 복제됨
- 존재하는 objeect 복제를 원할 시 s3 배치 복제 기능을 사용해야함
- 삭제의 경우 delete marker는 선택 사항으로 가능, version id 삭제는 악성 삭제를 방지하기 위해서 불가능
- 복제의 연쇄성은 없음 (1->2 복제, 2->3복제가 있으면, 1에서 생성시 3에서 생성 안됨)

## S3 Storage Classes
- Durability
    - 높은 내구성. 천만개를 1만년 동안 저장시 1개 분실 
    - 모든 class에 동일
- Availability
    - 얼마나 서비스를 이용 가능한지 측정
    - class마다 다름. S3 표준은 99.99% -> 1년에 53분 이용 불가
    ### S3 Standard
    - 99.99% 가용성
    - 대기 시간은 짧고 처리량은 높음
    - 자주 접근하는 데이터에 사용
    - 데이터 분석, 게임 applicaiton 등에 사용
    ### S3 Storage Classes
    - S3 표준보다 쌈
    - S3 Standard-Infrequent Access (Standard-IA)
        - 99.9% 가용성
        - 재앙 복구, 백업에 사용
        - 달에 한번정도 데이터에 접근시 유용
    - S3 One Zone-Infrequent Access (One Zone-IA)
        - 99.999999999% 내구성
        - 하나의 AZ 사용, AZ 파괴시 데이터도 잃음
        - 99.5% 가용성
        - 온프레미스 백업, 재생성 가능한 데이터 백업 / 달에 한번정도 데이터에 접근시 유용
    ### S3 Glacier Storage Classed
    - 빙하란 이름부터 추움. 보관과 백업을 위한 저비용 개체 저장소
    - 저장, 회수에 가격이 쓰임
    - S3 Glacier Instant Retrieval
        - millisecond 단위로 복구 가능, 분기마다 데이터 접근시 유용
        - 최소 저장 기간은 90일 (이후 삭제 가능)
    - S3 Glacier Flexible Retrieval
        - 1년에 한번 데이터 접근시 유용
        - 복구는 Expedited (1~5 min), Standard (3~5 hour), Bulk (5~12 hour) 종류가 있음
        - 최소 저장 기간은 90일 (이후 삭제 가능)
    - S3 Glacier Deep Archive
        - 장기간 보관 가능
        - 복구는 12시간과 48시간이 있음
    ### S3 Intelligent Tiering
    - 달마다 모니터링하고 자동 계층화 가능
    - 사용량에 기반하여 자동적으로 access tier 변경 가능
    - S3 Intelligent Tiering은 복구에 가격이 청구되지 않음
        - frequent access: 디폴트
        - infrequent access: 30일 이상 미접근 물체 삭제 
        - archive instant access: 90일 이상 미접근 물체 삭제
        - archive access tier: 90~700+일 사이에서 config 설정
        - deep archive access tier: 180 ~ 700+ 일 사이에서 config  설정

## S3 - Lifecycle Rule
- storage class간에 전환 룰 설정
- lifecycle rule을 통해서 자동으로 설정 가능
- transition action - object를 다른 저장 class로 이동 설정
- expiration action - 일정 기간 지난후 delete 작업 (로그 파일, old version 파일 등)
- rule은 prefix, tag를 통해서 생성 가능

## S3 - Event Notification
- event란: (제거 복제 복구 등) 
- 필터링 사용 가능(ex *.jpb)
- 모든 이미지의 섬네일을 생성하고 싶을 경우 사용 가능
- 원하는 만큼 s3 이벤트 생성 가능
- 목적지에 분 이상 걸릴 수도 있음
- iam 허가도 설정해야함 -> SNS로 전송할 경우, SNS resource에도 접근 가능한지 확인 필요 (target에서 정책을 설정해야함)
- s3 bucket의 모든 event는 Amazon EventBridge로 전송됨 -> 여기서 18개의 AWS 서비스로 이벤트로 보낼 수 있음
    - JSON rule를 통해서 향상된 필터링 기능 가능 (사이즈, 이름, metadata 등)
    - multiple destination 설정 가능
    - eventbridge capabilities를 통한 

## S3 Baseline Performance
- multi-part upload
    - 100mb 이상에 추천, 5gb이상은 의무
    - 파일을 여러 부분으로 분할해서 업로드
- transfer aaceleration
    - edge 지역으로 파일을 보내서 전송 속도를 높힘. edge 지역에서 target으로 이동
- byte-range fetches
    - file을 여루 부분으로 나눈 이후 다운로드
    - 일부분 데이터만 사용하기

## Select & Glacier Select
- Amazon S3 select 사용시에 네트워크 사용 필요 없이 바로 select를 실행하기에, 빠르고 쌈

## S3 Object Encryption (암호화)
- SSE (Server Side Encryption)
    - 서버측에서 관리해줌
    - SSE-S3 (with Amazon S3 Managed Keys) 
        - 디폴트로 활성화됨
        - key handled를 이용해 암호화되고, aws에 의해서 관리됨
        - 암호화 유형은 AES-256
        - 헤더에 x-amz-server-side-encryption: AES256를 설정해야함
    - SSE-KMS (KMS Keys stored in AWS KMS)
        - AWS KMS (Key Management Service)를 이용해 관리,
        - KMS는 유저 컨트롤이 가능, cloudtrail을 이용해 키 이용량을 살펴볼 수가 있음
        - 헤더에 x-amz-server-side-encrption: aws:kms를 설정해야함
        - 새로운 bucket, object에 디폴트로 설정됨
        - KMS 제한량이 있다는 단점이 있음. 다운로드 업로드에 KMS API 사용
    - SSE-C (Customer-Provided Keys)
        - 고객이 제공한 자체 키를 이용
        - amazon은 key정보를 저장하지 않음
        - aws 바깥에서 암호화됨
        - https가 무조건 사용해야함
        - http헤더의 일부를 제공해야 암호화 가능
- Client-Side Encryption
    - 클라이언트 라이브러리 (ex S3 Client-Side Encryption Library)를 사용
    - 클라이언트가 암호화하고 복호화해서 S3에 보냄
    - 고객이 직접 key와 복호화를 관리
- 이동 중 암호화 (SSL/TLS)
    - S3 버킷은 두 개의 종점이 존재
        - HTTP endpoint - 비암호화
        - HTTPS endpoint - 암호화 / 추천됨 / SSE-C에서는 필수
- 이동 중 암호를 강제로 설정하기
    - condition에서 aws:SecureTransport: false 설정시에 강제 가능


## S3 access point
- access point는 s3 버킷의 보안을 관리
- access point는 DNS 이름을 가짐 (인터넷 연결과 VPC 연결 중 하나)
- 보안을 관리해줌
- VPC Origin: VPC를 통해서만 access가 가능하도록 설정

## EBS Volume
- EBS(Elastic Block Store) Volume
- 인스턴스가 실행되는 동안 연결할 수 있는 네트워크 드라이브
- 인스턴스 종료 후에도 지속할 수 있도록 도와줌
- 한번에 하나의 인스턴스에 마운트가 가능 (CCP level임)
    - CCP: certified cloud parctitioner
- 하나의 특정 가용 구역(ex us-east-1a)에만 바인딩됨 (ex 타구역에 첨부 불가)
- usb 스틱이라고 생각하면 됨
- 무료 티어는 30GB 저장소를 제공
- EC2 종료시에 EBS 행동은 지정 가능
    - 디폴트는 root EBS는 제거되고 그 외의 EBS는 제거되지 않음
    - 위 디폴트 설정은 변경 가능
- EBS 변경시 인스턴스 재시작이나 volume을 인스턴스로부터 분리할 필요는 없음
    - 다만 줄이는 것은 불가
    - volume 타입 변경도 가능

## EFS, Elastic File System
- Managed NFS (network file system)으로 많은 EC2에 마운트 가능
- EFS는 여러 AZ에서 활동 가능
- 높은 가용성, 확정성, 비쌈, 사용량에 비례
- 콘텐츠 관리, 웹 서핑, 데이터 공유, 워드프레스
- EFS 접속을 위해서 security group 설정 필요
- Linux 기반 AMI에만 호환됨 (윈도우 불가)
- KMS를 이용해서 암호화 가능
- linux의 표준 파일 시스템인 POSIX 시스템 사용
- 표준 파일 API를 사용
- 미리 용량을 계획할 필요가 없음. 자동으로 켜짐
- EFS Scale
    - 1000s의 동시성 접근, 10GB+/s의 처리량
    - 페타 단위의 파일 시스템으로 자동적으로 성장
- 성능 모드를 통해서 EFS 생성 시간 설정 가능
    - 일반 목적: 디폴트, 대기 중 민감한 케이스에 사용됨(웹 서버 cms)
    - MAX I/O: 사용량이 최대일 경우. 대기 시간이 높고 병렬적임 (빅데이터 미디어)
- 처리량 모드
    - bursting(파열): 초당 50Mib + burst of up to 100Mib/s
    - provisioning: 크기와 상관없이 처리량 고정 (1 gib/s for 1tb)
    - elastic: 작업에 따라 자동으로 처리량을 늘렸다 줄일수 있음
- Storage Classes
    - Storage Tiers (수명 주기 관리 기능): N일 이후 파일 이동
        - 표준: 자주 접근하는 파일
        - infrequent access(EFS-IA): 비활성 액세스를 위한 계층. 저장을 위한 비용이 적음
        - Archive: 1년에 몇번 사용하는 데이터. 50% 쌈
        - life cycle 정책을 통해서 티어간 파일 이동 가능
    - 가용성과 내구성
        - standard: multi AZ, 재해에 강함
        - one zone: one AZ. 테스트, 백업 등에 사용. IA와 호환 가능
    - 잘만 사용하면 90% 비용 절감 가능

 ## EBS vs EFS
 - EBS volumn
    - one instance
    - 하나의 AZ에만 가능
    - gp2: 디스크 증가시  IO 증가
    - gp3: 독립적으로 IO 증가
- EBS AZ 마이그
    - 스냅샷 찍고
    - 다른 AZ에서 스냅샷을 복구
    - EBS 백업은 Io를 사용하고 트래픽이 과다할 경우 사용 불가
- EC2 종료시 root EBS는 종료됨 (설정 변경 가능)
- EFS
    - 여러 az에서 사용 가능
    - website files을 공유
    - linux instance만 사용 가능
    - EBS보다 가격이 비쌈 (스토리지 계층을 통해서 절약 가능)

## AWS 백업
- 관리 서비스
- AWS service에서 중심 관리와 자동 백업 가능
- 커스텀 스크립트나 관리 프로세스 불필요
- EC2 EBS S3 RDS Aurora DynamoDB Neptune EFS FSx 등을 지원
- BACKUP PLANS을 통해서 정책을 정함 (백업 빈도, Cold storage 전환, 유기 기간 등)
- WORM(Write Once Read Many) 강조 - 저장된 백업은 삭제 불가. 읽기만 가능