-- 007) WHERE절 배우기 (1) (숫자 데이터 검색)
SELECT ename, sal, job
  FROM emp
  WHERE sal = 3000;
  
SELECT ename as 이름, sal as 월급
  FROM emp
  WHERE sal >= 3000;
  
SELECT ename as 이름, sal as 월급  --> 3
  FROM emp                          --> 1
  WHERE 월급 >= 3000;               --> 2
  
  --> 오류!!