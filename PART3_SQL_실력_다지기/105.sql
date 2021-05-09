-- 105) 데이터의 품질 높이기 (2) (UNIQUE)
CREATE TABLE DEPT3
(DEPTNO     NUMBER(10),
 DNAME      VARCHAR2(14)    CONSTRAINT DEPT3_DNAME_UN   UNIQUE,
 LOC        VARCHAR2(10));
 
-- UNIQUE는 PRIMARY KEY 제약과는 달리 UNIQUE 제약이 걸린 컬럼에는 NULL 값을 입력할 수 있음.

-- 제약조건 추가
ALTER TABLE DEPT4
  ADD CONSTRAINT DEPT14_DNAME_UN UNIQUE(DNAME);
  
  
INSERT INTO DEPT3 VALUES(10, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT3 VALUES(10, NULL, 'DALLAS');
commit;

SELECT * FROM DEPT3;
