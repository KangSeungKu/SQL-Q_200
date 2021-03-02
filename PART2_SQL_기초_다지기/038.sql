-- 038) 평균값 출력하기 (AVG)
SELECT AVG(comm)
  FROM emp;
  
-- 그룹함수는 null값을 무시한다
--> 평균을 낼때 null값을 카운팅하지 않고 null이 아닌값들믜 수만으로 나눈다

SELECT ROUND(AVG(NVL(comm, 0)))
  FROM emp;