-- 026) 날짜 간 개월 수 출력하기 (MONTHS_BETWEEN)
SELECT ename, MONTHS_BETWEEN(sysdate,hiredate)
  FROM emp;
  
-- sysdate : 오늘 날짜를 확인하는 함수
--> MONTHS_BETWEEN(최신날짜, 예전날짜)
--> (-)연산으로 7일로 고정되어 있는 주(WEEK) 단위는 구할 수 있지만
--  30일인지 31일인지 정확하게 떨어지지 않는 월(MONTH) 단위는 구하기 쉽지 않기 때문에
--  MONTHS_BETWEEN을 사용.

-- 날짜 사이의 총 일수
SELECT TO_DATE('2021-02-01', 'RRRR-MM-DD') - TO_DATE('2020-06-01', 'RRRR-MM-DD')
  FROM DUAL; 
-- 245

-- 날짜 사이의 총 주(WEEK)수
SELECT ROUND((TO_DATE('2021-02-01', 'RRRR-MM-DD') - TO_DATE('2020-06-01', 'RRRR-MM-DD')) / 7 ) AS "총 주수"
  FROM DUAL;