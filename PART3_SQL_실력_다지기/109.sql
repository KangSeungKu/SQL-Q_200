-- 109) WITH절 사용하기 (1) (WITH ~ AS)
WITH JOB_SUMSAL AS (SELECT JOB, SUM(SAL) as "토탈"
                        FROM EMP
                        GROUP BY JOB)
SELECT JOB, 토탈
    FROM JOB_SUMSAL
    WHERE 토탈 > (SELECT AVG(토탈)
                    FROM JOB_SUMSAL);
                    
-- WITH절 : WITH절에 기술된 SQL문을 임시 저장 영역(Temporary Tablespace)에 명명지은 테이블명으로 저장되어 사용된다.

-- (=)
SELECT JOB, SUM(SAL) as "토탈"
  FROM EMP
  GROUP BY JOB
  HAVING SUM(SAL) > (SELECT AVG(SUM(SAL))
                        FROM EMP
                        GROUP BY JOB);
