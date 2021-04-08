-- 076) 서브 쿼리 사용하기 (6) (FROM절의 서브 쿼리)
SELECT v.ename, v.sal, v.순위
  FROM (SELECT ename, sal, rank() over (order by sal desc) 순위
          FROM emp) v
  WHERE v.순위 = 1;