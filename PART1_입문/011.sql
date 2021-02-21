-- 011) 비교 연산자 배우기 (2) (BETWEEN AND)
SELECT ename, sal
  FROM emp
  WHERE sal BETWEEN 1000 AND 3000;
  
  --  (  =  ) 동일
  
SELECT ename, sal
  FROM emp
  WHERE (sal >= 1000 AND sal <= 3000);
  
  
-- 월급이 1000에서 3000사이가 아닌 사원들을 검색
SELECT ename, sal
  FROM emp
  WHERE sal NOT BETWEEN 1000 AND 3000;
  
SELECT ename, sal
  FROM emp
  WHERE (sal < 1000 OR sal > 3000);
  
-- 1982년도에 입사한 사원들의 이름과 입사일을 검색
SELECT ename, hiredate
  FROM emp
  WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';