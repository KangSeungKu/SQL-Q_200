-- 102) 실수로 지운 데이터 복구하기 (4) (FLASHBACK VERSION QUERY)

-- 현재 시간 조회
SELECT SYSTIMESTAMP FROM DUAL;

-- 변경할 데이터 조회
SELECT ename, sal, deptno
  FROM emp
  WHERE ename = 'KING';
  
-- 데이터 수정
UPDATE emp
   SET sal = 8000
   WHERE ename = 'KING';

UPDATE emp
   SET deptno = 20
   WHERE ename = 'KING';
   
commit;   

SELECT ename, sal, deptno, versions_starttime, versions_endtime, versions_operation
  FROM emp
  VERSIONS BETWEEN TIMESTAMP
            TO_TIMESTAMP('2021-05-02 23:20:00', 'RRRR-MM-DD HH24:MI:SS')
            AND MAXVALUE
  WHERE ename = 'KING'
  ORDER BY versions_starttime;
--> 만약 'ORA-30052: 부적합한 하한 스냅샷 표현식'와 같은 오류가 발생시
--  'UNDO_RETENTION' 파라미터 값(골든타임)을 확인 후 현재 시간에서 그 시간만큼 전으로 수정한다.
  
-- 10분 전으로 되돌리기
FLASHBACK TABLE emp TO TIMESTAMP (SYSTIMESTAMP - INTERVAL '10' MINUTE);

commit;