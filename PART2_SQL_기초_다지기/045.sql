-- 045) 데이터 분석 함수로 데이터를 가로로 출력하기 (LISTAGG)
SELECT deptno, LISTAGG(ename, ',') within group (order by ename) as EMPLOYEE
  FROM emp
  GROUP BY deptno;
  
-- LISTAGG : 데이터를 가로로 출력하는 함수

-- 직업에 속한 사람 나열하기
SELECT job, LISTAGG(ename, ',') within group (order by ename asc) as employee
  FROM emp
  GROUP BY job;
  
-- 연결연산자(||)를 이용하여 월급 분포 알아보기 (월급 높은 순)
SELECT job, LISTAGG(ename||'('||sal||')',',') within group (ORDER BY sal desc) as employee
  FROM emp
  GROUP BY job;