-- 119) SQL로 알고리즘 문제 풀기 (9) (1부터 10까지 짝수만 출력)
UNDEFINE p_n
ACCEPT p_n prompt '숫자에 대한 값 입력 :';

SELECT LISTAGG(LEVEL, ', ') as 짝수
  FROM DUAL
  WHERE MOD(LEVEL, 2) = 0
  CONNECT BY LEVEL <= &p_n;
  
-- LISTAGG : 여러 컬럼 값을 하나로 합치기 위한 함수
--  cf) XMLAGG(오라클 9i 이하), WM_CONCAT(오라클 10g~11g R1) 함수를 사용, 11g R2부터는 WM_CONCAT이 사라짐
-- 