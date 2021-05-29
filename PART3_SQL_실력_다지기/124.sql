-- 124) SQL로 알고리즘 문제 풀기 (14) (몬테카를로 알고리즘)
SELECT SUM(CASE WHEN (POWER(NUM1,2) + POWER(NUM2,2)) <= 1 THEN 1
            ELSE 0 END) / 100000 * 4 as "원주율"
  FROM (
            SELECT DBMS_RANDOM.VALUE(0,1) AS NUM1,
                    DBMS_RANDOM.VALUE(0,1) AS NUM2
              FROM DUAL
            CONNECT BY LEVEL < 100000
        );
        
-- DBMS_RANDOM.VALUE(숫자1, 숫자2) : 난수를 생성하는 패키지의 함수로 '숫자1'과 '숫자2'사이의 난수를 생성