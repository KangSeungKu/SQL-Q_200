-- 044) 데이터 분석 함수로 순위의 비율 출력하기(CUME_DIST)
SELECT ename, sal, RANK() over (order by sal desc) as RANK,
                    DENSE_RANK() over (order by sal desc) as DENSE_RANK,
                    CUME_DIST() over (order by sal desc) as CUM_DIST
  FROM emp;
  
-- 'CUME_DIST'는 순위를 비율로 표시 ( 총 14명일 때, 1등은 1/14, 2등은 2/14 ...)
-- 순위가 동등할때는 마지막등수로 나눔 ( 공동 2등일때, 3/14 )

-- 직업별 CUM_DIST
SELECT job, ename, sal, RANK() over (partition by job order by sal desc) as RANK,
                         CUME_DIST() over (partition by job order by sal desc) as CUM_DIST
  FROM emp;