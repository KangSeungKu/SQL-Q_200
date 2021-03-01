-- 029) 특정 날짜가 있는 달의 마지막 날짜 출력하기 (LAST_DAY)
SELECT '2020/05/22' as 날짜, LAST_DAY('2020/05/22') as "마지막 날짜"
  FROM DUAL;
  
-- 이번달 마지막날까지 남은 날짜
SELECT LAST_DAY(SYSDATE) - SYSDATE as "남은 날짜"
  FROM DUAL;
  
SELECT ename, hiredate, LAST_DAY(hiredate)
  FROM emp
  WHERE ename = 'KING';