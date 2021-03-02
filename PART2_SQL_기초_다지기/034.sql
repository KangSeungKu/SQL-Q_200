-- 034) IF문을 SQL로 구현하기 (1) (DECODE)
SELECT ename, deptno, DECODE(deptno, 10, 300, 20, 400, 0) as 보너스
  FROM emp;
  
SELECT empno, mod(empno, 2), DECODE(mod(empno, 2), 0, '짝수', 1, '홀수') as 보너스
  FROM emp;
  
SELECT empno, job, DECODE(job, 'SALESMAN', 5000, 2000) as 보너스
  FROM emp;
  
-- DECODE(비교값, [조건, 출력값], ..., 고정값)
--> 비교값이 조건을 만족하면 출력값을 출력하고 그 외의 조건(else)는 고정값을 출력
--> == if(비교값 == 조건) 출력값 else 고정값 (...)에 따라 else if 추가