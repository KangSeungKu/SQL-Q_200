-- 111) SQL로 알고리즘 문제 풀기 (1) (구구단 2단 출력)
WITH LOOP_TABLE as (SELECT LEVEL as NUM
                       FROM DUAL
                       CONNECT BY LEVEL <= 9)
SELECT '2' || ' * ' || NUM || ' = ' || 2 * NUM AS "2단"
  FROM LOOP_TABLE;