-- 118) SQL로 알고리즘 문제 풀기 (8) (1부터 10까지의 곱)
UNDEFINE p_n
ACCEPT p_n prompt '숫자에 대한 값 입력:~';

SELECT ROUND(EXP(SUM(LN(LEVEL)))) 곱
  FROM DUAL
  CONNECT BY LEVEL <= &p_n;
  
-- LN : 자연로그를 반환하는 함수
-- SUM : 총계를 구하는 집계함수
-- EXP : e의 n제곱 값을 반환하는 함수 ( e = 2.71828183 )
-- ROUND : 특정 소수점을 반올림하는 함수

-- 1. SUM(LN(LEVEL))
--> loge1 + loge2 + loge3 + ... = loge1 X 2 X 3 X ...
-- 2. EXP(SUM(LN(LEVEL)))
--> e loge1x2x3... = 1 X 2 X 3 X ... logee = 1 X 2 X 3 X ...