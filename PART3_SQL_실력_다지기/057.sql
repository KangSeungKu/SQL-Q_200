-- 057) 출력되는 행 제한하기 (2) (Simple TOP-n Queries)

-- 위에서 4명만 출력하는 쿼리
SELECT empno, ename, job, sal
  FROM emp
  ORDER BY sal DESC FETCH FIRST 4 ROWS ONLY;
  
-- 월급이 높은 사람들 중 20%에 해당하는 사원들만 출력하는 쿼리
SELECT empno, ename, job, sal
  FROM emp
  ORDER BY sal DESC
  FETCH FIRST 20 PERCENT ROWS ONLY;
  
SELECT empno, ename, job, sal
  FROM emp
  ORDER BY sal DESC FETCH FIRST 2 ROWS WITH TIES;
-- > 값이 같을 경우 2개의 행만 출력하는게 아닌 같은값을 포함한 3개의 행을 출력하게 됨

SELECT empno, ename, job, sal
  FROM emp
  ORDER BY sal DESC OFFSET 9 ROWS;
--> OFFSET : 시작되는 행의 위치를 지정
--> 전체 조회에서 해당 열의 다음부터 출력

SELECT empno, ename, job, sal
  FROM emp
  ORDER BY sal DESC OFFSET 9 ROWS
  FETCH FIRST 2 ROWS ONLY;
--> 9번째에서 시작하여 2개만 출력