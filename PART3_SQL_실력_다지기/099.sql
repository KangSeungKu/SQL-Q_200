-- 099) 실수로 지운 데이터 복구하기 (1) (FLASHBACK QUERY)
SELECT *
  FROM EMP
  AS OF TIMESTAMP (SYSTIMESTAMP - INTERVAL '5' MINUTE)
  WHERE ENAME = 'KING';
  
  
-- SYSTIMESTAMP : 현재 시간을 나타냄
SELECT SYSTIMESTAMP 
  FROM dual;
  
SELECT SYSTIMESTAMP - INTERVAL '5' minute
  FROM dual;
  
SELECT ename, sal
  FROM emp
  WHERE ename = 'KING';
  
UPDATE EMP
   SET SAL = 5000
   WHERE ENAME = 'KING';
   
commit;

SELECT ename, sal
  FROM EMP
  AS OF TIMESTAMP (SYSTIMESTAMP - INTERVAL '5' minute)
  WHERE ENAME = 'KING';
  
-- 테이블을 플래쉬백할 수 있는 골든 타임은 기본이 15분이다.
-- 이 시간은 UNDO_RETENTION으로 확인가능
SELECT name, value
  FROM V$PARAMETER
  WHERE name = 'undo_retention';
--> 900초