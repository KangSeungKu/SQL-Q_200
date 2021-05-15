-- 110) WITH절 사용하기 (2) (SUBQUERY FACTORING)
WITH JOB_SUMSAL AS (SELECT JOB, SUM(SAL) 토탈
                        FROM EMP
                        GROUP BY JOB),
        DEPTNO_SUMSAL AS (SELECT DEPTNO, SUM(SAL) 토탈
                            FROM EMP
                            GROUP BY DEPTNO
                            HAVING SUM(SAL) > (SELECT AVG(토탈) + 3000
                                                    FROM JOB_SUMSAL)
                    )
SELECT DEPTNO, 토탈
  FROM DEPTNO_SUMSAL;
  
-- 다음과 같은 FROM절의 서브쿼리로 불가능한 쿼리를 가능하게 만듦.
SELECT DEPTNO, SUM(SAL)
  FROM (SELECT JOB, SUM(SAL) 토탈
          FROM EMP
          GROUP BY JOB) as JOB_SUMSAL,
          (SELECT DEPTNO, SUM(SAL) 토탈
            FROM EMP
            GROUP BY DEPTNO
            HAVING SUM(SAL) > (SELECT AVG(토탈) + 3000
                                  FROM JOB_SUMSAL)
          ) DEPTNO_SUMSAL;
  
-- SUBQUERY FACTORING : 어떠한 쿼리의 결과를 임시 테이블로 생성하는 것