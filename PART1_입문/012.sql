-- 012) 비교 연산자 배우기 (3) (LIKE)
SELECT ename, sal
  FROM emp
  WHERE ename LIKE 'S%';
  
-- % : 와일드 카드(Wild Card) -> 이 자리에 어떠한 철자가 와도 상관 없고 철자의 개수가 몇 개가 되든 관계없다는 뜻

-- 두 번째 철자가 M인 사원의 이름을 검색 ( '_(언더바)' 사용 )
SELECT ename
  FROM emp
  WHERE ename LIKE '_M%';
  
  
-- 끝 글자가 T로 끝나는 사원들의 이름 검색
SELECT ename
  FROM emp
  WHERE ename LIKE '%T';
  
  
-- 'A'가 포함된 사원들을 전부 검색
SELECT ename
  FROM emp
  WHERE ename LIKE '%A%';