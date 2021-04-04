-- 069) 집합 연산자로 데이터의 교집합을 출력하기 (INTERSECT)
SELECT ename, sal, job, deptno
  FROM emp
  WHERE deptno in(10,20)
INTERSECT
SELECT ename, sal, job, deptno
  FROM emp
  WHERE deptno in (20,30);
  
-- UNION 연산자처럼 중복된 데이터를 제거하고 결과 데이터(맨 앞 컬럼 = 1)를 내림차순으로 정렬해서 출력