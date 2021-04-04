-- 070) 집합 연산자로 데이터의 차이를 출력하기 (MINUS)
SELECT ename, sal, job, deptno
  FROM emp
  WHERE deptno in (10, 20)
MINUS
SELECT ename, sal, job, deptno
  FROM emp
  WHERE deptno in (20, 30);
  
-- 차집합 : 첫번째 선택된 쿼리에서 두번째 쿼리문을 뺀 결과
-- UNION과 INTERSECT와 마찬가지로 데이터를 정렬하는 것과 결과에 대한 중복제거도 이루어진다.