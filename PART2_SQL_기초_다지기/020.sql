-- 020) 특정 철자를 다른 철자로 변경하기 (REPLACE)
SELECT ename, REPLACE(sal, 0, '*')
  FROM emp;
  
SELECT ename, REGEXP_REPLACE(sal, '[0-3]', '*') as SALARY
  FROM emp;
  
-- REGEXP_REPLACE : 정규식 함수로 일반함수보다 더 복잡한 형태의 검색패턴으로 데이터를 조회

CREATE TABLE TEST_ENAME
(ENAME   VARCHAR2(10));

INSERT INTO TEST_ENAME VALUES('김인호');
INSERT INTO TEST_ENAME VALUES('안상수');
INSERT INTO TEST_ENAME VALUES('최영희');
COMMIT;


SELECT REPLACE(ENAME, SUBSTR(ENAME, 2, 1), '*') as "전광판_이름"
  FROM test_ename;