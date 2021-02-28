-- 025) 나눈 나머지 값 출력하기(MOD)
SELECT MOD(10, 3)
  FROM DUAL;
  
-- 홀수와 짝수를 구분(1, 0)
SELECT empno, MOD(empno, 2)
  FROM emp;
  
-- 나눈 몫을 출력
SELECT FLOOR(10/3)
  FROM DUAL;