## RDS
- big data용은 아님
    - RDS에서 Redshift 등으로 마이그하는 것도 좋지 않음
- ACID만족성을 지김
    - atomicity consistency isolation durability
    - 원자 지속적이고 분리된 지속성
    - 트랜잭션이 실패 시에 전체 롤백
    - 성공하면 전체 커밋
    - 동시성을 만족해야함
    - 트랜잭션 반영한 것이 영구적이여야함
## Aurora
    - MYSQL과 postgreSQL과 ghghksehlsms ㄲ유
    - MYSQL보다 5개 포스트그래보다 3배 빠름
    - DB 볼륨당 128TB를 가짐
    - S3에 대한 백업을 지원
    - 모든 지역에 복제 가능
    - VPC 네트워크 고립을 통해 보안 강화

## lock
- lock을 통해서 동시 작업을 막음
- 무결성과 동시성을 위해 행이나 테이블을 명시적으로 적을 수 있음
- 공유 자물쇠와 독점 자물쇠가 있음
    - 공유는 읽기는 허용해도 쓰기는 막음. 여러 트랜잭션에 의해 관리됨
    - 독점은 읽기와 쓰기를 모두 막음. 하나의 트랜잭션만 홀드 가능
- mysql의 경우 lcok tables employees write를 통해서 lock 가능. unlock을 통해서 풀 수가 있음. RDS도 동일

## RDS 가이드
- cloudwatch를 통해서 메모리 cpu 용량 관리
- 백업을 통해서 write IOPS를 관리
- IO용량 부족시에 복구를 진행해야함
- DNS의 TTL 사용 시간을 30초 이내로 설정
- index를 통해서 최적화 진행 (explain 힌트를 통해서 검색 가능)
- table full scan 피하기
- analyze table 주기적으로 실행
- where 구문 간략화
- 엔진 전용 최적화도 존재


## redshift
- 페타바이트 규모의 dw 서비스
- 다른 dw보다 10배 이상의 성능을 가짐
- OLAP를 위해 디자인됨, OLTP가 아님
- SQL ODBC JDBC 가능
- cloudwatch를 통한 모니터링 가능
- 아키텍처
    - leader노드가 이끄고 compute node가 계산을 진행
    - client는 jdbc/odbc로 leader와 통신
- 스팩트럼
    - 비구조화된 엑사바이트 데이터를 로딩 없이 쿼리해줌
    - 제한 없고, 수평 구조
    - gzip과 snappy 압축을 지원

## redshift 내구성, 확장성
- s3에 계속 백업
- 원본, compute node에 백업본, s3에 백업 이렇게 3곳에 저장되어 있음
- 비동기로 다른 지역으로 복사본을 보냄 
- 자동으로 스냅샷을 찍음
- 드라이브 실패시에 노드는 자동으로 교체됨
- 단일 노트 클러스터는 데이터 복제를 지원하지 않음 - s3 스냅샷에서만 복구해야함
- 스케일링(동시성 확장)이 진행되는 동안 이전의 클러스터에서 읽어오고, 병렬적으로 새로운 노드로 이동함

## redshift 데이터 분배 스타일
- auto: 데이터의 사이즈를 기반으로 판단
- even: row는 round robin을 통해서 분배
- key: row는 한 컬럼을 기반으로 분배
- all: 전체 테이블이 모든 노드로 복제

## redshift data flow
- copy
    - s3, dynamodb, emr 등에서부터 데이터를 그대로 가져옴
    - 병렬화가 효과적이고 s3에 대해서 file과 iam 권한이 필요함
    - s3에서 로드된 데이터 해독 가능 (암호화 포함)
    - 압축해서 효율을 높힐 수가 있음(gzip 등)
    - 자동 압축을 통해서 최적의 압축 구성표를 만들어줌
    - 테이블이 행이 많고 열이 없을 경우
        - copy 커멘드를 한개로 할 것
        - 여러개로 할 경우 숨겨진 메타 컬럼이 많은 공간을 사용함
    - cross region 스냅샷 copy도 지원
        - kms 암호화된 레드쉬프트 클러스터가 있고 
- unload
    - 테이블의 데이터를 s3로 넣음
- 강화된 VPC 라우팅도 필요
    - 설정하지 않으면 인터넷을 통해서 이동(트래픽 부하, 명령 중단 등의 문제점 발생)
- S3로부터 auto copy
- zero ETL 통합
    - aurora -> redshift로의 자동 복제 가능
- Streamin ingestion
    - kinesis 데이터와 msk로부터의 통합
- dblink를 통해서 rds(postgreSQL 등)과 연결 가능
    - rds와의 데이터 동기화에서 좋은 예시

