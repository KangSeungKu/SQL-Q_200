-- 052) 데이터 분석 함수로 집계 결과 출력하기 (1) (ROLLUP)
SELECT job, sum(sal)
  FROM emp
  GROUP BY ROLLUP(job);
  
-- 맨 아래에 전체 토탈점수를 추가적으로 표시
SELECT deptno, job, sum(sal)
  FROM emp
  GROUP BY ROLLUP(deptno, job);