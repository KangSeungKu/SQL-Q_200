-- 103) 실수로 지운 데이터 복구하기 (5) (FLASHBACK TRANSACTION QUERY)

UPDATE emp SET sal = 8000 WHERE ename = 'KING';
commit;
UPDATE emp SET deptno = 20 WHERE ename = 'KING';
commit;

SELECT versions_startscn, versions_endscn, versions_operation, sal, deptno
  FROM emp
   VERSIONS BETWEEN SCN MINVALUE AND MAXVALUE
   WHERE ename = 'KING';

SELECT undo_sql
  FROM flashback_transaction_query
  WHERE table_owner = 'SCOTT' AND table_name = 'EMP'
  AND commit_scn between 4124164 AND 4124167
  ORDER BY start_timestamp desc;
  
-- SCN(System Change Number) : commit할 때, 생성되는 번호
-- 사용시에는 데이터베이스를 아카이브 모드로 변경해야 한다.
-- sysdba로 로그인하여 shutdown 후 startup을 거쳐 모드를 수정


update "SCOTT"."EMP" set "SAL" = '5000' where ROWID = 'AAAR2EAAHAAAAFkAAB';
update "SCOTT"."EMP" set "DEPTNO" = '10' where ROWID = 'AAAR2EAAHAAAAFkAAB';
commit;

select * from emp where ename = 'KING';