-- 022) 특정 철자 잘라내기 (TRIM, RTRIM, LTRIM)
SELECT 'smith', LTRIM('smith', 's'), RTRIM('smith', 'h'), TRIM('s' from 'smiths')
  FROM dual;
  
-- LTRIM : 왼쪽에서 자름
-- RTRIM : 오른쪽에서 자름
-- TRIM : 양쪽에서 자름

insert into emp(empno,ename,sal,job,deptno) values(8291, 'JACK  ', 3000, 'SALESMAN', 30);
commit;

SELECT ename, sal
  FROM emp
  WHERE RTRIM(ename) = 'JACK';
-- 값에 공백이 포함되어 있을 때 조회가 안되는 결과를 피할 수 있음.

DELETE FROM EMP WHERE TRIM(ENAME)='JACK';
COMMIT;
