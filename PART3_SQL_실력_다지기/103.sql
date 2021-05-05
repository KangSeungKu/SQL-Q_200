-- 103) 실수로 지운 데이터 복구하기 (5) (FLASHBACK TRANSACTION QUERY)

UPDATE emp SET sal = 8000 WHERE ename = 'KING';
commit;

SELECT undo_sql
  FROM flashback_transaction_query
  WHERE table_owner = 'SCOTT' AND table_name = 'EMP'
  AND commit_scn between 9457390 AND 9457397
  ORDER BY start_timestamp desc;
  
-- SCN(System Change Number) : commit할 때, 생성되는 번호