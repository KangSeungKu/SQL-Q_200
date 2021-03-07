-- 048) COLUMN을 ROW로 출력하기 (2) (PIVOT)
SELECT *
  FROM (select deptno, sal from emp)
  PIVOT (sum(sal) for deptno in (10, 20, 30));
  
-- 직업별 출력 (ANALYST, CLERK, MANAGER, SALESMAN)
SELECT *
  FROM (select job, sal from emp)
  PIVOT (sum(sal) for job in ('ANALYST' as "ANALYST", 'CLERK' as "CLERK", 'MANAGER' as "MANAGER", 'SALESMAN' as "SALESMAN"));
--> 컬럼에 싱글쿼테이션(')마크가 찍히는 것을 막기위해 별칭을 사용함.