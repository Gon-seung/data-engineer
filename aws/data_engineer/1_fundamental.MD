## Data Warehouse vs Date Lake
### Data Warehouse
- 여러 소스로부터 이루어진 구조화된 중앙 저장 데이터
- ETL 과정을 통해서 생성됨
- Amazon Redshift, Google Bigquery, Microsoft Azure SQL Data Warehouse 등에서 사용됨

### Data Lake
- 원시 데이터를 저장하는 저장소. 구조화, 반구조화 등 모든 데이터가 존재
- ELT 과정을 통해서 생성됨
- S3 (Amazon Simple Storage Service), Azure Data Lake Storage, HDFS (Hadoop Distribute File System)

## Data Mesh
- 각각의 팀은 각각의 도메인을 가짐
- 다른 부서에 데이터를 제공하는 역할을 가짐
- 중앙 기준에 맞는 관리가 필요
- data mesh는 관리 패러다임에 가까움

## ETL
- Extract Transform Load
    ### Extract
    - 데이터를 회수
    - 데이터가 손상되거나 사라지는 것을 막아야함
    - 스트리밍 or 배치 형식으로 진행
    ### Transform
    - 타켓 DW로 적잘한 형식으로 전환
    - Data cleansing (중복 제거, 에러 제거)
    - Data enrichment (다른 소스로부터 데이터 추가)
    - Format change (date 포멧, string 관리)
    - Aggregations or computations (전체 or 평균 계산)
    - Encoding or Decoding data
    - Handling msiing value
    ### Load
    - 전환된 데이터를 target으로 이동
    - 스트리밍 or 배치 형식으로 진행
    ### 관련 Tool
    - AWS Glue
    - EventBridge
    - Amazon Managed Workflow
    - AWS Step Function
    - Lambda

## Data Source Type
    ### JDBC
    - Java Database Connectiveity
    - Java 언어에 의존적
    - 플랫폼에 독립적
    ### ODBC
    - Open Database Connectivity
    - 플랫폼에 의존적
    - 언어에 독립적
    ### CSV
    - Comma Separated Values
    - 텍스트 기반 형식. 구분자가 콤마로 확정되지는 않음
    - DB에서 Import, Export 사용에 사용
    - 사람이 읽을 수 있을때 사용
    ### JSON
    - 사람이 읽을 수 있는 데이터이며 key-value 형태로 구조화 or 반구조화됨
    - web에서 데ㅔ이터 교환에 사용
    - software aplplication에서 config 설정에 사용
    - flexible 스키마에 사용
    - javascript. restful api. mongodb, web browser 등에 사용됨
    ### Avro
    - Binary format으로 데이터와 스키마를 동시에 저장
    - 다른 시스템에서 원래의 시스템의 정보 필요 없이 진행 가능
    - 스키마 변환이 필요할때, 시스템간 수송이 필요할때 사용
    - kafka, spark, flink 등에 사용
    ### Parquet
    - 행이 아닌 열 형식으로 저장
    - 열에 저장되어 분석에 최적화 (특정 열 조회에 속도가 빠름) 
    - 압축과 인코딩으 효울적 (열은 보통 같은 타입이기에)
    - 최적화 저장에 유리
    ### 그 외
    - Raw logs
    - API
    - Streams

## DB 최적화
- index를 통한 full table scan 피하기. 무결정 강조
- partitioning을 통해 데이터 스캔 양을 감조. data 생명 주기 관리를 도와줌
- 압축을 통한 데이터 전송, 저장량 감소를 이루어짐

## 데이터 샘플링
- 큰 데이터를 다루는 비용을 감소시켜 줌
- random sampling: 랜덤으로 샘플링
- stratified sampling: 데이터를 서브 그룹으로 나눈 이후, 각 서브 그룹에서 랜덤으로 뽑는 방식
- systemic sampling: 일정 규칙을 정해 데이터를 샘플링
- 그외: cluster 등

## Data Skew
- 데이터 해골
- 파티션을 통해서 불균등한 분배될 시에 Data skew라고 불림
- 유명인의 문제라고도 함, 불균형으로 인해 파티션이 불필요
- ex) 영화 db에서 배우별로 나누었는데, 유명한 배우에 있는 파티션이 엄청 많음
- 해결책1 adaptive partitioning: 동작 파티션을 통해 분배
- 해결책2 salting: 무작위 값을 추가해 데이터 분배를 잘 이루어지도록 함
- 해결책3 repartitioning: 재분배
- 해결책4 sampling: 샘플 데이터만 사용
- 해결책5 custom partitioning: custion function등을 사용해 파티션 생성

## Data Validation and Profilling
### completeness (완전성)
- 요구된 데이터가 전부 있는지, 비어있는 부분이 있는지
- null count, missing value
- 놓친 데이터는 부정확한 결과로 이어짐
### consistency (일관성)
- 서로 같은 값을 가지는 지
- cross-field 유용성 검사, 다른 소스와 비교
- 다른 결과로 이루어짐
### accuracy (정확정)
- 데이터가 맞는지, 신뢰할만한지
- 신뢰된 소스와 비교
- 전혀 다른 결과가 나오게 됨
### integrity (진실성)
- 수명 등의 정확성을 통해 데이터 보존을 보장
- fk, 관계에 문제가 발생
- 데이터 속성간의 관계에 영향을 끼침

