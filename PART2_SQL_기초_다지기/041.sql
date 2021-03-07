-- 041 데이터 분석 함수로 순위 출력하기 (1) (RANK)
SELECT ename, job, sal, RANK() over (ORDER BY sal DESC) 순위
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER');
  
-- RANK() 다음 OVER 다음 괄호안에 출력하고 싶은 데이터를 정렬

SELECT ename, sal, job, RANK() over (PARTITION BY job ORDER BY sal DESC) as 순위
  FROM emp;


-- RANK()는 공동순위를 책정하고 다음으로 넘기기 때문에 공동순위를 고려할때는 'DENSE_RANK'를 사용한다.
