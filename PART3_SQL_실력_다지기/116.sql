-- 116) SQL로 알고리즘 문제 풀기 (6) (사각형 출력)
UNDEFINE p_n1           -- p_n1 변수 안의 내용을 지운다
UNDEFINE p_n2           -- p_n2 변수 안의 내용을 지운다
ACCEPT p_n1 prompt '가로 숫자를 입력하시오~';     -- 가로 내용에 대한 메세지를 출력하고 입력한 숫자값을 p_n1 변수에 담는다
ACCEPT p_n2 prompt '세로 숫자를 입력하시오~';     -- 세로 내용에 대한 메세지를 출력하고 입력한 숫자값을 p_n2 변수에 담는다

WITH LOOP_TABLE as (SELECT LEVEL as NUM
                      FROM DUAL
                      CONNECT BY LEVEL <= &p_n2)    -- p_n2값 만큼 세로로 출력되는 행수만큼 반복
SELECT LPAD('★', &p_n1, '★') as STAR
  FROM LOOP_TABLE;                                   -- p_n1값 만큼 가로에 '★'을 채움
