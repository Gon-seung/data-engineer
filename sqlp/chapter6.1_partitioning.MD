## 파티셔닝
### 파티션 종류
    1. Range
        - 여러 컬럼 선택 가능
        - 입력 공간을 찾지 못하는 에러 발생시 Maxvalue로 예상
    2. List
        - 하나의 컬럼만 선택 가능
        - 불연속적인 값을 분할할때 사용
        - 각 파티션끼리는 독립적 (SELECT, DML 작업을 독립적으로 가능)
        - 입력 공간을 찾지 못하는 에러 발생시 default 추가로 예방
    3. Hash
        - 여러 컬럼 선택 가능
        - DML을 분산할때 사용
        - 각 파티션끼리는 독립적 (SELECT, DML 작업을 독립적으로 가능)
        - 입력 공간을 찾지 못해 에러가 발생하지는 않음

### Partition Pruning
    - SQL 조건절을 분석하여 읽지 않아도 되는 파티션 세그먼트를 엑세스 대상에서 제외하는 기능
    - PARTITION RANGE SINGLE의 OPERATION 발생시 pruning이 되고 있는 것
    - PARTITION RANGE ALL의 OPERATION 발생시 pruning이 안되는 것
    - pruning 작동 예시: LIST의 BETWEEN
    - pruning 미작동 예시: where 절의 컬럼 가공, HASH 파티션의 like 조건

## Index
### Local Prefixed Index
    - 인덱스 구성에서 선두 컬럼이 Partition Key Column인 index
    - 파티션테이블과 똑같은 구성으로 인덱스를 파티션하는 것
    - 정렬 기준이 Partiton Key
### Local Non-prefixed Index
    - 인덱스 구성에서 중간에 Partition Key Column인 index
    - 정렬 기준이 Partition Key가 아님
### Global Index
    - 전역 파티션 인덱스, 글로벌 인덱스
    - Partition Key가 포함되지 않는 column들로 unique index를 만들고자 할 경우에는 Global index로 만들어야 한다.
    - 성능, 가용성, 관리 용이성 모두 Local index가 좋음
    1. Global Prefixed Partitionted Index
        - partition 별 독립성이 없기에 수정 사항이 발생하면 rebuild 작업 필요
    2. Global Prefixed Non-partitionted Index
        - index가 partitioned되어 있지 않는 형태, 일반적인 형태
        - Primary Key 생성시에 기본적으로 이 형태로 만들어짐
