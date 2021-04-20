-- 095) 복잡한 쿼리를 단순하게 하기 (1) (VIEW)
CREATE VIEW EMP_VIEW
AS
SELECT empno, ename, sal, job, deptno
  FROM emp
  WHERE job = 'SALESMAN';
  
SELECT * FROM emp_view;

-- VIEW는 모든 컬럼이 아닌 일부의 컬럼만 보여줄 때 사용
-- 보안상의 공개되면 안되는 데이터들이 있을 때 유용
-- 단, VIEW를 UPDATE하거나 DELETE하면 실제 테이블에도 영향이 감.