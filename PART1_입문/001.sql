-- 001) 테이블에서 특정 열(COLUMN) 선택하기
SELECT empno, ename, sal 
  FROM emp;
  
-- 가독성을 높이기 위해 SQL은 대문자, 컬럼명과 테이블명은 소문자로 작성
-- 또한 SQL문이 점점 길어짐에 따라 SELECT절과 FROM절을 각각 별도의 라인에 작성
--  -> FROM절을 2칸에서 3칸 정도 공백을 주어 들여쓰기
-- 작성간 코딩 순서를 지킬 것!
--  -> SELECT를 먼저 쓰고 FROM을 그 다음에 작성