-- 073) 서브 쿼리 사용하기 (3) (NOT IN)
SELECT ename, sal, job
  FROM emp
  WHERE empno not in (SELECT mgr
                          FROM emp
                          WHERE mgr is not null);
-- emp테이블의 mgr컬럼에는 null값이 존재하기 때문에 
-- 조건에 empno != NULL ( NULL )이 포함되게 되므로
-- 메인쿼리문으로 NULL이 들어가지 않게 조심해야 한다.