## SQL 분석 도구
### 예상 실행 계획
    1. Oracle
        - explain plan for (sql문)
            - 실행계획이 plan_table에 저장된다.
        - select * from table( dbms_xplan.display(null, null, 'typical'));
            - plan_table에 저장된 정보를 읽는 방법. 가장 쉬운 방법이 dbms_xplan.display 함수이다.
    2. SQL server
        - set showplan_text on: 간단하게 해당 명령어를 입력하면 된다.
    3. 오라클 dbms_xplan.display에서 얻을 수 있는 정보
        - Plan Hash Value
        - 오브젝트 액세스 방식 (Operation)
        - 오브젝트명
        - 예상 Cardinality (=Rows)
        - 예상 데이터 크기 (Bytes)
        - 예상 Cost
        - 예상 CPU Time
        - 조건절 정보 (Predicate Information)
    4. 오라클 AutoTrace 설정 값
        - set autotrace on: 실행 O, 결과 O, 예상 실행계획 및 실행 통계
        - set autotrace on explain: 실행 O, 결과 O, 예상 실행계획
        - set autotrace on statistics: 실행 O, 결과 O, 실행 통계
        - set autotrace traceonly: 실행 O, 결과 X, 예상 실행계획 및 실행 통계
        - set autotrace traceonly explain: 실행 X, 결과 X, 예상 실행계획
        - set autotrace traceonly statistics: 실행 O, 결과 X, 실행 통계
    5. 오라클 AutoTrace에서 얻을 수 있는 정보
        - 예상 실행계획
        - 통계 정보
            - recursive calls
            - db block gets
            - consistent gets
            - physical reads
            - redo size
            - sorts (memory, disk)
            - rows processed

### SQL Trace
    1. Oracle
        - alter session set sql_trace = true를 통해서 sql trace 확인 가능
        - tkprof를 통해서 트레이스 파일을 분석해 리포트 파일 생성
    2. 얻을 수 있는 정보
        - Parse, Execute, Fetch에 대한 정보들 (cpu, elapsed, disk, query, current, rows)
            - Parse: 커서를 파싱하는 과정(실행계획을 생성하거나 찾는 과정)을 수행한 횟수
            - Execute: 커서를 실행하는 과정을 수행한 횟수
            - Fetch: select에서 실제 레코드를 읽어 결과를 출력한 횟수
            - select는 Execute는 커서 오픈만, 나머지는 모두 Fetch
            - DML(insert, update, delete, merge)는 Fetch 미발생.
            - For update는 Execute 단계에서 모든 레코드를 읽어 lock을 설정
        - 테이블, 인덱스 엑세스 정보
    3. AutoTrace(좌) vs SQL Trace(우) 비교
        - consistent gets = query
        - SQL*Net roundtrips to/from client = fetch call count
        - rows processed = fetch rows