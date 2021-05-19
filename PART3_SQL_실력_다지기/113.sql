-- 113) SQL로 알고리즘 문제 풀기 (3) (직각삼각형 출력)
WITH LOOP_TABLE as (SELECT LEVEL AS NUM
                      FROM DUAL
                      CONNECT BY LEVEL <= 8)
SELECT LPAD('★', NUM, '★') as STAR
  FROM LOOP_TABLE;
  
-- LPAD([원본데이터], [전체사이즈], [채울문자])