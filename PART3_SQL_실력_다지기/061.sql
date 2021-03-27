-- 061) 여럽 테이블의 데이터를 조인해서 출력하기 (4) (SELF JOIN)
SELECT e.ename as 사원, e.job as 직업, m.ename as 관리자, m.job as 직업
  FROM emp e, emp m
  WHERE e.mgr = m.empno and e.job = 'SALESMAN';
  
--> 테이블에 관리자 테이블도 존재하기 때문에
--  자신이 자신을 조인해서 관리자를 알아낼 수 있음.
--  사원테이블이자 관리자 테이블도 됨