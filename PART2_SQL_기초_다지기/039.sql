-- 039) 토탈값 출력하기 (SUM)
SELECT deptno, SUM(sal)
  FROM emp
  GROUP BY deptno;
  
SELECT job, SUM(sal)        -- (3)
  FROM emp                   -- (1)
  GROUP BY job              -- (2)
  ORDER BY SUM(sal) DESC;   -- (4)
  
-- 집계함수에서는 WHERE이 아닌 HAVING을 사용해야 함
SELECT job, SUM(sal)        -- (5)
  FROM emp                   -- (1)
  WHERE job <> 'SALESMAN'   -- (2)
  GROUP BY job              -- (3)
  HAVING SUM(sal) >= 4000   -- (4)
  ORDER BY SUM(sal) DESC;   -- (6)