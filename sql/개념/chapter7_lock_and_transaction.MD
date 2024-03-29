## Lock과 트랜잭션 동시성 제어
### Lock 호환성
    - 모든 배타적 Lock끼리는 호환 X
    - select시에 SQL Server는 공유 Lock, Oracle은 Lock을 미사용
        - Oracle은 DML 수행 중에도 select 가능

### Transaction 4가지 특징(ACID)
    1. 원자성(Atomicity)
        - 트랜잭션은 분해가 불가능한 업무의 최소단위이므로, 전부 처리되거나 아예 하나도 처리되지 않아야 한다.
    2. 일관성(Consistency)
        - 일관된 상태의 데이터베이스에서 하나의 트랜잭션을 성공적으로 완료하고 나면 그 데이터베이스는 여전히 일관된 상태여야 한다. 즉, 트랜잭션 실행의 결과로 데이터베이스 상태가 모순되지 않아야 한다.
    3. 격리성(Isolation)
        - 실행 중인 트랜잭션의 중간결과를 다른 트랜잭션이 접근할 수 없다.
    4. 영속성(Durability)
        - 트랜잭션이 일단 그 실행을 성공적으로 완료하면 그 결과는 데이터베이스에 영속적으로 저장된다.

### 동시 Transaction에 의해 발생하는 이상 현상
    1. Dirty Read
        - 트랜잭션이 변경 중인 데이터를 읽었는데, 롤백으로 인해서 비일관성 상태 발생
    2. Non-Repeatable Read
        - 한 트랜잭션 내에서 같은 데이터를 두 번 이상 읽을 때, 다른 트랜잭션이 값을 수정 또는 삭제함으로 인해 값이 달라지는 현상
    3. Phantom Read
        - 한 트랜잭션 내에서 일정 범위의 데이터를 두 번 이상 읽을 때, 다른 트랜잭션이 새로운 데이터를 추가함으로 인해 없던 데이터가 나타나는 현상

### 격리 수준
    1. Read Uncommitted: Dirty Read, Non-Repeatable Read, Phantom Read
    2. Read Committed: Non-Repeatable Read, Phantom Read
    3. Repeatable Read: Phantom Read
    4. Serializable: 없음

### Snapshot too old(ORA-01555) 에러
    - 같은 블록을 여러번 select할 시에 발생
    - delayed 블록 클린아웃이 주요 원인 중 하나이므로, update 후에 테이블을 full scan해서 바로 블록을 클린아웃해주자. 
    - Table Full Scan 및 해시 조인을 사용하여 에러를 해결

### 비관성 동시성 제어 vs 낙관적 동시성 제어
    - 비관적: 데이터를 읽는 시점부터 Lock 설정. 다른 트랜잭션이 수정할 가능성이 높다고 판단
    - 낙관적: 데이터를 읽는 시점에는 Lock 설정 X. 다른 트랜잭션이 수정할 가능성이 낮다고 판단. 수정 이후 제대로 되었는지 확인 필요

### 기타
    - WAIT, NO WAIT 옵션은 select * for update에서만 사용 가능