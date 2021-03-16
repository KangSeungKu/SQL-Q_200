-- 050) 데이터 분석 함수로 누적 데이터 출력하기 (SUM OVER)
SELECT empno, ename, sal, SUM(SAL) OVER (ORDER BY empno ROWS
                                            BETWEEN UNBOUNDED PRECEDING
                                            AND CURRENT ROW) 누적지
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');
-- 괄호 안에는 값을 누적할 윈도우를 지정
-- 윈도우의 기준은 ROWS로 함
-- UNBOUNDED PRECEDING : 맨 첫 번쨰 행을 가리킵니다.
-- UNBOUNDED FOLLOWING : 맨 마지막 행을 가리킵니다.
-- CURRENT ROW : 현재 행을 가리킵니다.