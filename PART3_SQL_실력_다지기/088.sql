-- 088) 서브쿼리를 사용하여 데이터 합치기
ALTER TABLE dept
        ADD sumsal number(10);
-- 먼저 dept테이블에 'sumsal'이라는 컬럼추가


MERGE INTO dept d
USING (SELECT deptno, sum(sal) sumsal
        FROM emp
        GROUP BY deptno) v
ON (d.deptno = v.deptno)
WHEN MATCHED THEN
UPDATE set d.sumsal = v.sumsal;
-- 새롭게 추가된 'sumsal'이라는 컬럼에 해당 부서 번호의 토탈 월급으로 갱신

UPDATE dept d
   SET sumsal = (SELECT SUM(SAL)
                    FROM emp e
                    WHERE e.deptno = d.deptno);
-- MERGE문을 사용하지 않고 UPDATE문 만으로 수행하는 쿼리


select * from dept;