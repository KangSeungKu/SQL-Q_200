-- 063) 여러 테이블의 데이터를 조인해서 출력하기 (5) (USING절)
SELECT e.ename as 이름, e.job as 직업, e.sal as 월급, d.loc as 부서위치
  FROM emp e join dept d
  USING (deptno)
  WHERE e.job = 'SALESMAN';
  
-- JOIN조건이 되는 deptno에 별칭을 붙이게 되면 오류 발생
-- 또한 괄호도 누락되면 오류 발생