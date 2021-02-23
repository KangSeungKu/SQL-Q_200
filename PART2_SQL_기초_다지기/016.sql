-- 016) 대소문자 변환 함수 배우기 (UPPER, LOWER, INITCAP)
SELECT UPPER(ename), LOWER(ename), INITCAP(ename)
  FROM emp;
  
SELECT ENAME, SAL
  FROM emp
  WHERE LOWER(ename)='scott';