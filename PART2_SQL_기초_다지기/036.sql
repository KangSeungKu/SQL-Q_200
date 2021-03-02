-- 최대값 출력하기 (MAX)
SELECT MAX(sal)
  FROM emp;
  
SELECT MAX(sal)
  FROM emp
  WHERE job = 'SALESMAN';
  
SELECT job, MAX(sal)
  FROM emp
  WHERE job = 'SALESMAN';
--> 오류!!!) job컬럼은 여러개를 MAX(sal) 컬럼은 하나를 출력하려고 하기때문에 오류가 발생함
        --> GROUP BY가 필요
        
SELECT job, MAX(sal)        -- (4)
  FROM emp                   -- (1)
  WHERE job = 'SALESMAN'    -- (2)
  GROUP BY job;             -- (3)
  
SELECT deptno, MAX(sal)
  FROM emp
  GROUP BY deptno;