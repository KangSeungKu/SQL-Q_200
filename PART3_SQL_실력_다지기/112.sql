-- 112) SQL로 알고리즘 문제 풀기 (2) (구구단 1단 ~ 9단 출력)
WITH LOOP_TABLE as (SELECT LEVEL AS NUM
                       FROM DUAL
                       CONNECT BY LEVEL <= 9),
     GUGU_TABLE as (SELECT LEVEL + 1 AS GUGU
                      FROM DUAL
                      CONNECT BY LEVEL <= 8)
SELECT TO_CHAR(A.NUM) || ' X ' || TO_CHAR(B.GUGU) || ' = ' || TO_CHAR(B.GUGU * A.NUM) as 구구단
  FROM LOOP_TABLE A, GUGU_TABLE B;
  
-- 조인을 사용하였지만 조건을 주지 않았기 때문에 모든조합으로 계산가능