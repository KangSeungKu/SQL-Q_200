-- 032) 암시적 형 변환 이해하기
SELECT ename, sal
  FROM emp
  WHERE sal = '3000';
  
-- 숫자형인 'sal'컬럼을 문자형으로 검색하였지만
-- 오라클이 암시적으로 형 변환하여 보여준다

CREATE TABLE EMP32
(ENAME  VARCHAR2(10),
 SAL    VARCHAR2(10));
 
INSERT INTO EMP32 VALUES('SCOTT', '3000');
INSERT INTO EMP32 VALUES('SMITH', '1200');
COMMIT;

SELECT ename, sal
  FROM emp32
  WHERE sal = '3000';
  
SELECT ename, sal
  FROM emp32
  WHERE sal = 3000;
  
SET AUTOT ON

SELECT ename, sal
  FROM emp32
  WHERE SAL = 3000;
  
-- SET AUTOT ON : SQL을 실행할 떄 출력하는 결과와 SQL을 실행하는 실행 계획을 한 번에 보여 달라는 SQLPLUS 명령어