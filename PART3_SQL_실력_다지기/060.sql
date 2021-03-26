-- 060) 여러 테이블의 데이터를 조인해서 출력하기 (3) (OUTER JOIN)
SELECT e.ename, d.loc
  FROM emp e, dept d
  WHERE e.deptno (+) = d.deptno;
  
-- (+)는 두 테이블 중 덜 나오는 쪽에 붙여준다.