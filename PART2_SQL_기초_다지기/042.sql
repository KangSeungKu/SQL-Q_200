-- 042) 데이터 분석 함수로 순위 출력하기 (2) (DENSE_RANK)
SELECT ename, job, sal, RANK() over (ORDER BY sal DESC) AS RANK,
        DENSE_RANK() over (ORDER BY sal DESC) AS DENSE_RANK
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');
  
SELECT job, ename, sal, DENSE_RANK() OVER (PARTITION BY job ORDER BY sal DESC) 순위
  FROM emp
  WHERE hiredate BETWEEN to_date('1981/01/01', 'RRRR/MM/DD')
  AND to_date('1981/12/31', 'RRRR/MM/DD');
  
-- 사원테이블에서 월급이 2975인 사원은 순위가 어떻게 되는지 알아보는 쿼리
SELECT DENSE_RANK(2975) within group (ORDER BY sal DESC) 순위
  FROM emp;
  
-- 입사일 81년 11월 17일인 사원테이블 전체 사원들 중 몇 번째로 입사한 것인지 출력하는 쿼리
SELECT DENSE_RANK('81/11/17') within group (ORDER BY hiredate ASC) 순위
  FROM emp;