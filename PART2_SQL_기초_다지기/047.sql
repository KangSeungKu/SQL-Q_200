-- 047) COLUMN을 ROW로 출력하기 (1) (SUM+DECODE)
SELECT SUM(DECODE(deptno, 10, sal)) as "10",
        SUM(DECODE(deptno, 20, sal)) as "20",
        SUM(DECODE(deptno, 30, sal)) as "30"
  FROM emp;
  
-- 부서번호가 10이면 월급, 그 외에는 NULL을 출력
-- if(deptno == 10) sal else null;
SELECT deptno, DECODE(deptno, 10, sal) as "10"
  FROM emp;
--> 10인 부서 이외의 값은 null로 표시되기 때문에 null이 아닌 값만을 합치는 SUM을 이용하면
--  부서의 합계를 구할 수 있음.
SELECT SUM(DECODE(deptno, 10, sal)) as "10"
  FROM emp;
  
-- 직업별 토탈 월급 구하기
SELECT SUM(DECODE(job, 'ANALYST', sal)) as ANALYST,
        SUM(DECODE(job, 'CLERK', sal)) as CLERK,
        SUM(DECODE(job, 'MANAGER', sal)) as MANAGER,
        SUM(DECODE(job, 'SALESMAN', sal)) as SALESMAN
  FROM emp;
  
-- 부서별+직업별 토탈 월급 구하기
SELECT deptno, SUM(DECODE(job, 'ANALYST', sal)) as ANALYST,
        SUM(DECODE(job, 'CLERK', sal)) as CLERK,
        SUM(DECODE(job, 'MANAGER', sal)) as MANAGER,
        SUM(DECODE(job, 'SALESMAN', sal)) as SALESMAN
  FROM emp
  GROUP BY deptno;