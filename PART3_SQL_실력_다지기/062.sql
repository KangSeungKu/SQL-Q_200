-- 062) 여러 테이블의 데이터를 조인해서 출력하기 (5) (ON절)
SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e JOIN dept d
  ON (e.deptno = d.deptno)
  WHERE e.job = 'SALESMAN';