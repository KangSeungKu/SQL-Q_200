-- 043) 데이터 분석 함수로 등급 출력하기 (NTILE)
SELECT ename, job, sal, NTILE(4) over (order by sal desc nulls last) 등급
  FROM emp
  WHERE job in ('ANALYST', 'MANAGER', 'CLERK');
  
  
-- 'order by sal desc nulls last'의 뜻은 월급을 높은 것부터 출력되도록 정렬하는데,
-- NULL을 맨 아래에 출력하겠다는 의미. (디폴트값은 null이 항상 맨위)