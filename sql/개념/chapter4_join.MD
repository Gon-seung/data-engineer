## join
### join 힌트 넣기
    1. Oracle 
        - leading(o c t) use_nl(c) use_hash(t)
        - leading (o) use merge(c)
        - hash는 먼저 읽는 테이블이 hash table로 사용됨. swap_join_inputs(a)를 통해서 정할 수도 있음
        - leading (d) use_hash(e)
        - ordered use_hash(d) swap_join_inputs(d)
    2. SQL Server
        - nl조인1: force order, loop join
        - nl조인2: inner loop join ~ force order
        - sort join: force order, merge join
        - hash join: inner hash join ~ force order

### join 이론
    1. sort
        - 첫 번째 집합은 인덱스가 있으면 그대로, 없으면 PGA에 저장
        - 두 번째 집합은 PGA에 저장하여 사용
        - PGA 공간 부족시에 temp tablespace (디스크)에 저장하기에 속도가 hash에 비해서 느림
    2. hash
        - 한 쪽의 테이블만 PGA에 저장
        - hash table은 한번 수행되면 사라지기에 자주 사용되는 시스템에 사용하는 것은 피할 것

    