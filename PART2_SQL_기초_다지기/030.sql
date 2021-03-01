-- 030) 문자형으로 데이터 유형 변환하기 (TO_CHAR)
SELECT ename, TO_CHAR(hiredate, 'DAY') as 요일, TO_CHAR(sal, '999,999') as 월급
  FROM emp
  WHERE ename = 'SCOTT';
  
-- 연도 : RRRR, YYYY, RR, YY
-- 월   : MM, MON
-- 일   : DD
-- 요일 : DAY, DY
-- 주   : WW, IW, W
-- 시간 : HH, HH24
-- 분   : MI
-- 초   : SS

SELECT ename, hiredate
  FROM emp
  WHERE TO_CHAR(hiredate, 'RRRR') = '1981';

-- 연, 월, 일 분리해서 출력  
SELECT ename as 이름,
        EXTRACT(year from hiredate) as 연도,
        EXTRACT(month from hiredate) as 달,
        EXTRACT(day from hiredate) as 요일
  FROM emp;
  
-- ',' 표시 (금액)
SELECT ename as 이름, to_char(sal, '999,999') as 월급
  FROM emp;
  
SELECT ename as 이름, TO_CHAR(sal * 200, 'L999,999,999') as 월급
  FROM emp;
  
-- L : 원화 표시