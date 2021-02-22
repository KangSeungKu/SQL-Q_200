-- 013) 비교 연산자 배우기 (4) (IS NULL)
SELECT ename, comm
  FROM emp
  WHERE comm is null;
  
-- NULL은 알 수 없는 값이기 때문에 이퀄 연산자(=)로는 비교할 수 없음.