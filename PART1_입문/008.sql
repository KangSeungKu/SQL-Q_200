-- 008) WHERE절 배우기 (2) (문자와 날짜 검색)
SELECT ename, sal, job, hiredate, deptno
  FROM emp
  WHERE ename = 'SCOTT';
  
SELECT ename, hiredate
  FROM emp
  WHERE hiredate = '81/11/17';
  
-- 날짜의 경우 나라마다 날짜 형식이 다르기 때문에 날짜 검색을 하기 전에 현재 접속한 세션(Session)의 날짜 형식을 확인하는 것이 필요
SELECT *
  FROM NLS_SESSION_PARAMETERS
  WHERE PARAMETER = 'NLS_DATE_FORMAT';
  
--> NLS_DATE_FORMAT	| RR/MM/DD

ALTER SESSION SET NLS_DATE_FORMAT = 'YY/MM/DD';  --> 81 => RR : 1981, YY : 2081

SELECT ename, sal
  FROM emp
  WHERE hiredate = '01/11/17'; --> 오류!!
  
-- 세션(Session) : 데이터베이스 유저로 로그인해서 로그아웃할 때까지의 한 단위를 말한다.
  --> ALTER명령어로 날짜형식을 바꿔도 한 세션이 지나면 다시 'RR/MM/DD'로 돌아간다.