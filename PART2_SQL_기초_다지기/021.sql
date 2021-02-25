-- 021) 특정 철자를 N개 만큼 채우기 (LPAD, RPAD)
SELECT ename, LPAD(sal, 10, '*') as salary1, RPAD(sal, 10, '*') as salary2
  FROM emp;
  
-- 백단에서 substring과 같이 잘라내는 메서드에서 Exception을 피할 수 있음.
-- 다음과 같이 데이터 시각화에 용이
SELECT ename, sal, lpad('■', round(sal/100), '■') as bar_chart
  FROM emp;
  
--> '■'과 같이 특정문자를 포함하여 100으로 나누어지는 수만큼 '■'문자를 채우기 때문에
-- 막대바처럼 보여짐