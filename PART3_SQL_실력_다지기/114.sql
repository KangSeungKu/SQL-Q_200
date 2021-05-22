-- 114) SQL로 알고리즘 문제 풀기 (4) (삼각형 출력)

-- 역직각삼각형
WITH LOOP_TABLE as (SELECT LEVEL as num
                      FROM DUAL
                      CONNECT BY LEVEL <= 8)
SELECT LPAD(' ', 10-num, ' ') || LPAD('★', num, '★') as "Triangle"
  FROM LOOP_TABLE;

-- 정삼각형
WITH LOOP_TABLE as (SELECT LEVEL as n
                      FROM DUAL
                      CONNECT BY LEVEL <= 5)
SELECT LPAD(' ', 5-n, ' ') || LPAD('★', n+(n-1), '★') as "Triangle"
  FROM LOOP_TABLE;
  
-- 치환변수 이용
-- UNDEFINE : 변수의 정의를 해제하거나, 할당된 값을 지울 수 있음.
UNDEFINE 숫자1
UNDEFINE 숫자2

WITH LOOP_TABLE as (SELECT LEVEL as num
                      FROM DUAL
                      CONNECT BY LEVEL <= &숫자1)
SELECT LPAD(' ', &숫자2-num, ' ') || LPAD('★', num, '★') as "Triangle"
  FROM LOOP_TABLE;