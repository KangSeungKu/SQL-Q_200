-- 050) 데이터 분석 함수로 누적 데이터 출력하기 (SUM OVER)
SELECT empno, ename, sal, SUM(SAL) OVER (ORDER BY empno ROWS
                                            BETWEEN UNBOUNDED PRECEDING
                                            AND CURRENT ROW) 누적지
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');