-- 091) 계층형 질의문으로 서열을 주고 데이터 출력하기 (3)
SELECT rpad(' ', level*3) || ename as employee, level, sal, job
  FROM emp
  START WITH ename = 'KING'
  CONNECT BY prior empno = mgr
  ORDER SIBLINGS BY sal desc;
  
--> 서열 순서를 유지하면서 월급이 높은 순으로 출력
-- ORDER BY 사이에 SIBLINGS를 사용하여 정렬하면 계층형 질의문의 서열 순서를
-- 깨뜨리지 않으면서 출력할 수 있음. SIBLINGS를 사용하지 않을 경우 월급이 높은 순서대로만 출력됨.