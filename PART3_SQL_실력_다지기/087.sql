-- 087) 서브 쿼리를 사용하여 데이터 삭제하기

select ename,
        deptno,
        sal,
        (select avg(sal) from emp s where m.deptno = s.deptno) 
  from emp m;
-- 해당 사원의 부서별 평균출력


DELETE FROM emp
WHERE sal > (SELECT sal
                FROM emp
                WHERE ename = 'SCOTT');
-- SCOTT보다 월급이 많은 사원들을 삭제


DELETE FROM emp m
WHERE sal > (SELECT avg(sal)
                FROM emp s
                WHERE s.deptno = m.deptno);
-- 월급이 해당 사원이 속한 부서 번호의 평균 월급보다 크면 삭제하는 쿼리