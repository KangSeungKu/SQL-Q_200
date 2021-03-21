-- 054) 데이터 분석 함수로 집계 결과 출력하기 (3) (GROUPING SETS)
SELECT deptno, job, sum(sal)
  FROM emp
  GROUP BY GROUPING SETS((deptno), (job), ());
  

SELECT deptno, sum(sal)
  FROM emp
  GROUP BY ROLLUP(deptno);
  
--       ( = )

SELECT deptno, sum(sal)
  FROM emp
  GROUP BY GROUPING SETS(deptno, ());