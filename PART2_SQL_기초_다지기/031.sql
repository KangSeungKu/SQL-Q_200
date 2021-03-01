-- 031) 날짜형으로 데이터 유형 변환하기 (TO_DATE)
SELECT ename, hiredate
  FROM emp
  WHERE hiredate = TO_DATE('81/11/17', 'RR/MM/DD');
  
-- 날짜형식(DATE)를 조건(WHERE)으로 걸 경우 error가 많이 발생하므로
-- 형식에 맞게 고쳐야 함. (TO_DATE)

SELECT ename, hiredate
  FROM emp
  WHERE hiredate = '81/11/17';
  
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/RR';

SELECT ename, hiredate
  FROM emp
  WHERE hiredate = '17/11/81';
  
-- 나라마다 또는 접속하는 세션마다 날짜 형식이 다를 수 있으므로 일관되게 날짜를 검색할 수 있는 방법이 필요하므로
-- 다음과 같은 'TO_DATE'함수를 사용한다.

SELECT ename, hiredate
  FROM emp
  WHERE hiredate = TO_DATE('1981-11-17', 'YYYY-MM-DD');