-- 024) 숫자를 버리고 출력하기(TRUNC)
SELECT '876.567' as 숫자, TRUNC(876.567,1)
  FROM dual;
  
-- 'ROUND'와 마찬가지로 뒤 매개변수만큼 보여지게 버림.