-- 107) 데이터의 품질 높이기 (4) (CHECK)
CREATE TABLE EMP6
(   EMPNO       NUMBER(10),
    ENAME       VARCHAR2(20),
    SAL         NUMBER(10) CONSTRAINT EMP6_SAL_CK   CHECK   ( SAL BETWEEN 0 AND 6000 ) );
    
-- CHECK : 특정 컬럼에 특정 조건의 데이터만 입력, 수정될 수 있도록 제한하는 제약조건

INSERT INTO EMP6 VALUES ( 7839, 'KING', 5000 );
INSERT INTO EMP6 VALUES ( 7839, 'KING', -20 );      -- ORA-02290: 체크 제약조건(SCOTT.EMP6_SAL_CK)이 위배되었습니다
INSERT INTO EMP6 VALUES ( 7839, 'KING', 9000 );     -- ORA-02290: 체크 제약조건(SCOTT.EMP6_SAL_CK)이 위배되었습니다

UPDATE EMP6 SET sal = 9000 WHERE empno = 7839;      -- ORA-02290: 체크 제약조건(SCOTT.EMP6_SAL_CK)이 위배되었습니다
commit;

-- 제약조건 삭제
ALTER TABLE EMP6
 DROP CONSTRAINT emp6_sal_ck;
 
commit;


INSERT INTO EMP6 VALUES ( 7839, 'KING', -20 );      --> 가능해짐.
INSERT INTO EMP6 VALUES ( 7839, 'KING', 9000 );     --> 가능해짐.

SELECT * FROM EMP6;

commit;