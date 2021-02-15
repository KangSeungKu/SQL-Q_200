-- 006) 데이터를 정렬해서 출력하기 (ORDER BY)
SELECT ename, sal
  FROM emp
  ORDER BY sal asc;
  
-- asc  : Ascending
-- desc : Descending

-- ORDER BY절에 여러 컬럼을 넣는 것도 가능
-- 부서코드로 먼저 오름차순 정렬 후 급여로 내림차순으로 정렬 
SELECT ename, deptno, sal
  FROM emp
  ORDER BY deptno asc, sal desc;

-- 컬럼의 순서에 따라 숫자로 표현해도 됨.
SELECT ename, deptno, sal
  FROM emp
  ORDER BY 2 asc, 3 desc;