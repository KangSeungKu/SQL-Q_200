-- 071) 서브 쿼리 사용하기 (1) (단일행 서브쿼리)
SELECT ename, sal
  FROM emp
  WHERE sal > (SELECT sal
                  FROM emp
                  WHERE ename = 'JONES');
                  
-- SCOTT과 월급이 같은 사람을 출력
SELECT ename, sal
  FROM EMP
  WHERE sal = (SELECT sal
                 FROM emp
                 WHERE ename = 'SCOTT')
  AND ename != 'SCOTT';
--> SCOTT도 같이 출력되게 되기 때문에 조건 추가