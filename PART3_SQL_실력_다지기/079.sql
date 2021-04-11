-- 079) 데이터 수정하기 (UPDATE)
UPDATE emp
   SET sal = 3200
   WHERE ename = 'SCOTT';
   
commit;
-- SET절의 변경할 컬럼은 콤마(,)로 구분하여 여러값 수정 가능

UPDATE emp
   SET sal = (SELECT sal FROM emp WHERE ename = 'KING')
   WHERE ename = 'SCOTT';
   
-- UPDATE문은 UPDATE, SET, WHERE절에서 모두 서브 쿼리 작성이 가능