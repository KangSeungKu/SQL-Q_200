-- 056) 출력되는 행 제안하기 (1) (ROWNUM)
SELECT ROWNUM, empno, ename,job, sal
  FROM emp
  WHERE ROWNUM <= 5;
  
-- PSEUDO COLUMN(가짜의)는 별표(*)로도 출력되지 않는 감춰진 컬럼