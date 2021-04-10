-- 077) 서브 쿼리 사용하기 (7) (SELECT절의 서브 쿼리)
SELECT ename, sal, (select max(sal) from emp where job='SALESMAN') as "최대 월급",
        (select min(sal) from emp where job='SALESMAN') as "최소 월급"
  FROM emp
  WHERE job='SALESMAN';
  
-- SELECT절의 서브 쿼리는 서브 쿼리가 SELECT절로 확장되었다고 해서 스칼라(scallar) 서브 쿼리로 불린다.
-- 스칼라 서브 쿼리는 출력되는 행 수만큼 반복하여 실행됨.
-- 같은 SQL이 반복되서 실행되어 같은 데이터를 반복해서 출력할 때는
-- 성능을 위해 첫번째 실행 값을 메모리에 올려놓고 두번째 행부터는 메모리에 올려놓은 값을 그대로 출력한다.
-- 이를 서브 쿼리 캐싱(CACHING)이라고 한다.