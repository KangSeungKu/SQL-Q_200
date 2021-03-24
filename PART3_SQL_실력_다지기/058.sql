-- 058) 여러 테이블의 데이터를 조인해서 출력하기 (1) (EQUI JOIN)
SELECT ename, loc
  FROM emp, dept
  WHERE emp.deptno = dept.deptno;
  
  
SELECT ename, loc
  FROM emp, dept;
  
SELECT emp.ename, d.loc, e.job
  FROM emp e, dept d
  WHERE e.deptno = d.deptno
  AND e.job = 'ANALYST';
--> 오류!!! ) 조인문에서 FROM절부터 실행되므로 EMP는 별칭 e로 변경되었기 때문에 e.name이라고 작성해야 함.