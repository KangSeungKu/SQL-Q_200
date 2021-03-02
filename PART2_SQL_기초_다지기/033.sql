-- 033) NULL 값 대신 다른 데이터 출력하기(NVL, NVL2)
SELECT ename, comm, NVL(comm, 0)
  FROM emp;
  
SELECT ename, sal, NVL(comm, 0), sal+NVL(comm, 0)
  FROM emp
  WHERE job IN ('SALESMAN', 'ANALYST');
  
SELECT ename, sal, comm, NVL2(comm, sal+comm, sal)
  FROM emp
  WHERE job IN ('SALESMAN', 'ANALYST');
  
-- NVL(비교값, 출력값) : 비교값이 null이면 출력값을 출력하게 하는 함수
-- NVL2(비교값, 출력값1, 출력값2) : 비교값이 null이 아니면 출력값1을, null이면 출력값2를 출력하게 하는 함수