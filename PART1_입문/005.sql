-- 006) 중복된 데이터를 제거해서 출력하기 (DISTINCT)
SELECT DISTINCT job
  FROM emp;
  
SELECT UNIQUE job   --> DISTINCT 대신 UNIQUE를 사용해도 무관
  FROM emp;
  
SELECT DISTINCT job, mgr  --> 중복을 제거할 수 있는 만큼
  FROM emp;