-- 082) 데이터 입력, 수정, 삭제 한번에 하기(MERGE)
ALTER TABLE emp
ADD loc varchar2(10);

MERGE INTO emp e
USING dept d
ON (e.deptno = d.deptno)
WHEN MATCHED THEN
UPDATE set e.loc = d.loc
WHEN NOT MATCHED THEN
INSERT (e.empno, e.deptno, e.loc) VALUES (1111, d.deptno, d.loc);

-- MERGE : 데이터 입려과 수정과 삭제를 한 번에 수행할 수 있게 해주는 명령어
