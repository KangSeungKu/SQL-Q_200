-- 046) 데이터 분석 함수로 바로 전 행과 다음 행 출력하기 (LAG, LEAD)
SELECT empno, ename, sal, LAG(sal, 1) over (order by sal asc) "전 행",
        LEAD(sal, 1) over (order by sal asc) "다음 행"
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');
  
-- over 다음에 나오는 괄호 안을 기준으로 앞과 뒤의 값을 출력


-- 입사일 기준
SELECT empno, ename, hiredate,
        LAG(hiredate, 1) over (order by hiredate asc) "전 행",
        LEAD(hiredate, 1) over (order by hiredate asc) "다음 행"
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');
  
-- 부서 번호별
SELECT deptno, empno, ename, hiredate,
        LAG(hiredate, 1) over (partition by deptno order by hiredate asc) "전 행",
        LEAD(hiredate, 1) over (partition by deptno order by hiredate asc) "다음 행"
  FROM emp;