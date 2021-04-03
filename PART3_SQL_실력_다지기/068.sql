-- 집합 연산자로 데이터를 위아래로 연결하기 (2) (UNION)
SELECT deptno, sum(sal)
  FROM emp
  GROUP BY deptno
UNION
SELECT null as deptno, sum(sal)
  FROM emp;
  
-- UNION ALL과의 차이
-- 1) 중복된 데이터를 하나이 고유한 값으로 출력한다.
-- 2) 첫 번째 컬럼의 데이터를 기준으로 내림차순으로 정렬하여 출력한다.