-- 101) 실수로 지운 데이터 복구하기 (3) (FLASHBACK DROP)
DROP TABLE emp;

select * from emp;
-- ORA-00942: 테이블 또는 뷰가 존재하지 않습니다

SELECT original_name, droptime
  FROM USER_RECYCLEBIN;
-- 휴지통에 존재하는지 조회
-- EMP_SAL	2021-05-01:22:51:41     -> 연관되어 있던 테이블(VIEW)인듯
-- EMP	2021-05-01:22:51:41

FLASHBACK TABLE emp TO BEFORE DROP;
-- DROP된 사원 테이블 휴지통에서 복원 (VIEW도 복원됨)
-- 오라클 11g 버전부터 휴지통 기능이 생겨서 테이블을 DROP할 경우 테이블이 휴지통에 들어가게 됨.

-- 휴지통에서 복구할 때, 테이블명을 변경하여 복구
FLASHBACK TABLE emp TO BEFORE DROP RENAME TO emp2;

drop table emp99;
commit;

flashback table emp99 to before drop rename to emp99_2;

select * from emp99_2;

-- commit과는 무관하게 테이블을 복원할 수 있는것으로 보임.