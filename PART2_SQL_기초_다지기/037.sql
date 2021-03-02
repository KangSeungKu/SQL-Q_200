-- 037) 최소값 출력하기 (MIN)
SELECT MIN(sal)
  FROM emp
  WHERE job = 'SALESMAN';
  
SELECT job, MIN(sal) 최소값
  FROM emp
  GROUP BY job
  ORDER BY 최소값 DESC;
  
SELECT NVL(MIN(sal), 0)
  FROM emp
  WHERE 1=2;
  
SELECT job, MIN(sal)
  FROM emp
  WHERE job != 'SALESMAN'
  GROUP BY job
  ORDER BY MIN(sal) DESC;