-- 065) 여러 테이블의 데이터를 조인해서 출력하기 - (7) (LEFT/RIGHT OUTER JOIN)
SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e RIGHT OUTER JOIN dept d
  ON (e.deptno = d.deptno);
  
  
SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e LEFT OUTER JOIN dept d
  ON (e.deptno = d.deptno);