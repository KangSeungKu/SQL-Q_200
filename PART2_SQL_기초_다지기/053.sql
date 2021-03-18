-- 053) 데이터 분석 함수로 집계 결과 출력하기 (2) (CUBE)
SELECT job, sum(sal)
  FROM emp
  GROUP BY CUBE(job);
  
-- 전체 토탈 월급이 맨 위에 출력되고, 그 다음으로 직업별 토탈 금액이 출력됨.
SELECT deptno, job, sum(sal)
  FROM emp
  GROUP BY CUBE(deptno, job);