-- 072) 서브 쿼리 사용하기 (2) (다중 행 서브쿼리)
SELECT ename, sal
  FROM emp
  WHERE sal in (SELECT sal
                   FROM emp
                   WHERE job = 'SALESMAN');
-- 'SALESMAN'인 사원이 여러명이기 때문에 (=)연산자를 사용하면 오류가 발생하기 때문에 IN연산자를 사용
