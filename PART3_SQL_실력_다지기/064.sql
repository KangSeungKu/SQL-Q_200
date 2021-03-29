-- 064) 여러 테이블의 데이터를 조인해서 출력하기 (6) (NATURAL JOIN)
SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e natural join dept d
  WHERE e.job = 'SALESMAN';
  
-- 두 테이블에 존재하는 동일한 컬럼을 기반으로 암시적으로 조인을 수행
-- 조인의 연결고리가 되는 컬럼을 사용할 때에는 별칭없이 사용해야 함.

SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e natural join dept d
  WHERE e.job = 'SALESMAN' and deptno = 30;