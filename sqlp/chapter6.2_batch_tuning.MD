## 대용량 배치 프로그램 튜닝
### P -> P (PARALLEL_TO_PARALLEL)
    - 데이터를 재분배하는 오퍼레이션
    - P -> P 오퍼레이션이 나타나는 구간은 두개의 서버 집합이 처리 (2배의 병렬 프로세스 필요)
    - 재분배 과정에 queue를 사용
    - order by, group by, 동적 join 파티셔닝에 사용됨
    - 병렬 프로세스 간 통신이 발생하므로 inter-operation parallelism에 속함
### S -> P (PARALLEL_FROM_SERIAL)
    - QC가 읽은 데이터를 테이블 큐를 통해 병렬 서버 프로세스에 전송
### P -> S (PARALLEL_TO_SERIAL)
    - 각 병렬 서버 프로세스가 처리한 데이터를 QC에게 전송
### PCWP (PARALLEL_COMBINED_WITH_PARENT)
    - 한 병렬 프로세스가 현재 스텝과 부모 스텝을 모두 처리
### PCWC (PARALLEL_COMBINED_WITH_CHILD)
    - 한 병렬 프로세스가 현재 스텝과 자식 스텝을 모두 처리
    