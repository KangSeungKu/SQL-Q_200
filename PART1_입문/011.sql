-- 011) 비교 연산자 배우기 (2) (BETWEEN AND)
SELECT ename, sal
  FROM emp
  WHERE sal BETWEEN 1000 AND 3000;
  
  --  (  =  ) 동일
  
SELECT ename, sal
  FROM emp
  WHERE (sal >= 1000 AND sal <= 3000);