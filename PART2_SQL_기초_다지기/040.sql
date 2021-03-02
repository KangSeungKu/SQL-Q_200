-- 040) 건수 출력하기(COUNT)
SELECT COUNT(empno)
  FROM emp;
-- 14
  
SELECT COUNT(comm)
  FROM emp;
-- 4
  
-- 집계함수는 null값을 카운팅하지 않기 때문에
-- 다음과 같은 차이가 발생한다.
-- 따라서, PK값을 갖는 값으로 카운팅하거나 *로 카운팅해야 한다.