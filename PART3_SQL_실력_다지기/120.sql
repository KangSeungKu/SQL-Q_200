-- 120) SQL로 알고리즘 문제 풀기 (10) (1부터 10까지 소수만 출력)
UNDEFINE p_n
ACCEPT p_n prompt '숫자에 대한 값 입력 :';

WITH LOOP_TABLE as (SELECT LEVEL AS NUM
                      FROM DUAL
                      CONNECT BY LEVEL <= &p_n)
SELECT L1.NUM as 소수
  FROM LOOP_TABLE L1, LOOP_TABLE L2
  WHERE MOD(L1.NUM, L2.NUM) = 0
  GROUP BY L1.NUM
  HAVING COUNT(L1.NUM) = 2;
  
-- 소수 : 1과 자기 자신의 수로만 나눌 수 있는 수 -> self join을 사용