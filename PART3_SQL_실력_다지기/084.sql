-- 084) SELECT FOR UPDATE절 이해하기
SELECT ename, sal, deptno
  FROM emp
  WHERE ename = 'JONES'
  FOR UPDATE;
  
-- SELECT ... FOR UPDATE문은 검색하는 행에 락(LOCK)을 거는 SQL문
-- 이로서 현재 세션에서 COMMIT이 이루어지기 전까지는 다른 세션에서 UPDATE문으로 변경을 시도하면 WAITTING하게 된다.
-- 