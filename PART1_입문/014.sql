-- 014) 비교 연산자 배우기 (5) (IN)
SELECT ename, sal, job
  FROM emp
  WHERE job in ('SALESMAN', 'ANALYST', 'MANAGER');
  
--        (=)

SELECT ename, sal, job
  FROM emp
  WHERE (job = 'SALESMAN' or job='ANALYST' or job='MANAGER');
  
  
  
SELECT ename, sal, job
  FROM emp
  WHERE job NOT in ('SALESMAN', 'ANALYST', 'MANAGER');
  
--        (=)

SELECT ename, sal, job
  FROM emp
  WHERE (job != 'SALESMAN' and job != 'ANALYST' and job != 'MANAGER');