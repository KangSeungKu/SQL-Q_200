-- 094) 임시 테이블 생성하기 (CREATE TEMPORAY TABLE)
CREATE GLOBAL TEMPORARY TABLE EMP37
( EMPNO     NUMBER(10),
  ENAME     VARCHAR2(10),
  SAL       NUMBER(10))
  ON COMMIT DELETE ROWS;
  
-- ON COMMIT DELETE ROWS : 임시 테이블에 데이터를 입력하고 COMMIT할 때까지만 데이터를 보관한다.
-- ON COMMIT PRESERVE ROWS : 임시 테이블에 데이터를 입력하고 세션이 종료될 때까지 데이터를 보관한다.