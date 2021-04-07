-- 075) 서브 쿼리 사용하기 (5) (HAVING절의 서브 쿼리)
SELECT job, sum(sal)
  FROM emp
  GROUP BY job
  HAVING sum(sal) > (SELECT sum(sal)
                       FROM emp
                       WHERE job = 'SALESMAN');