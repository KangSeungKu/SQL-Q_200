-- 117) SQL로 알고리즘 문제 풀기 (7) (1부터 10까지 숫자의 합)
UNDEFINE p_n                                    -- p_n 변수의 값을 지운다
ACCEPT p_n prompt '숫자에 대한 값 입력:~';     -- 숫자를 입력받아 p_n 변수에 담는다

SELECT SUM(LEVEL) as 합계
  FROM DUAL
  CONNECT BY LEVEL <= &p_n;                     -- 입력받은 숫자의 총합(SUM)을 집계한다.