-- 125) SQL로 알고리즘 문제 풀기 (15) (오일러 상수 자연상수 구하기)
WITH LOOP_TABLE AS (SELECT LEVEL AS NUM FROM DUAL
                    CONNECT BY LEVEL <= 1000000
                    )
SELECT RESULT
  FROM (
            SELECT NUM, POWER((1 + 1/NUM), NUM) AS RESULT
              FROM LOOP_TABLE
        )
  WHERE NUM = 1000000;
  
-- 자연상수 e의 값 : 2.718...