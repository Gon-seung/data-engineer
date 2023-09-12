## index
### INDEX FAST FULL SCAN
    - 인덱스에 포함된 컬럼으로만 조회할 때 사용 가능
### INDEX SKIP SCAN
    - 컬럼 검색이 in 조건일 경우 사용 불가능
### 클러스터형 INDEX
    - oracle은 pk으로만 클러스터형 인덱스를, SQL Server는 그 외에도 가능
    - 테이블에 1개만 생성 가능
    - SQL Server 기준 클러스터형 인덱스 생성 시, 다른 비클러스터형 인덱스들은 자동 재구성
### INDEX 가능 변환 로직
    - SUBSTR(업체명, 1, 2) = '대한' -> 업체명 LIKE '대한%'
    - 월급여 * 12 > 3600 -> 월급여 > 3600 / 12
    - NVL(주문수량, 0) >= 100 -> 주문수량 >= 100
    - TO_CHAR(일시, 'YYYYMMDD') = :dt -> 일시 >= TO_DATE(:dt, 'YYYYMMDD') and 일시 < TO_DATE(:dt, 'YYYYMMDD') + 1
    - FLOOR(할인율) < :dcrt -> 할인율 < CEIL(:dcrt)


