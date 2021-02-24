-- 018) 문자열의 길이를 추출하기 (LENGTH)
SELECT ename, LENGTH(ename)
  FROM emp;
  
-- 6
SELECT LENGTH('가나다라마바')
  FROM DUAL;
  
-- LENGTH는 한글과 영문 관계없이 길이를 반환
  
-- 18
SELECT LENGTHB('가나다라마바')
  FROM DUAL;
  
-- LENGTHB는 바이트의 길이를 반환 (한글은 한글자당 3바이트)