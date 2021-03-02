-- 035) IF문을 SQL로 구현하기 (2) (CASE)
SELECT ename, job, sal, CASE WHEN sal >= 3000 THEN 500
                               WHEN sal >= 2000 THEN 300
                               WHEN sal >= 1000 THEN 200
                               ELSE 0 END AS BONUS
  FROM emp
  WHERE job IN ('SALESMAN', 'ANALYST');
  
SELECT ename, job, comm, CASE WHEN comm is null THEN 500
                                ELSE 0 END BONUS
  FROM emp
  WHERE job IN ('SALESMAN', 'ANALYST');
  
SELECT ename, job, CASE WHEN job in ('SALESMAN', 'ANALYST') THEN 500
                          WHEN job in ('CLERK', 'MANAGER') THEN 400
                          ELSE 0 END as 보너스
  FROM emp;