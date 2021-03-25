-- 059) 여러 테이블의 데이터를 조인해서 출력하기 (2) (NON EQUI JOIN)
SELECT e.ename, e.sal, s.grade
  FROM emp e, salgrade s
  WHERE e.sal between s.losal and s.hisal;
  
-- 일반 조인과 같이 서로 같은 값을 갖는 컬럼이 없을 때 사용하는 조인이 NON EQUI JOIN이다.
--> emp 테이블의 월급은 salgrade 테이블의 losal과 hisal 사이에 있다는 것을 이용하여 WHERE절에 기술