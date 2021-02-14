-- 002) 테이블에서 모든 열(COLUMN) 출력하기
SELECT *
  FROM emp;
  
-- 세미콜론(;)은 SQL을 종료하고 실행하겠다는 표시

-- 테이블의 모든 컬럼을 출력하고 맨 끝에 다시 한 번 특정 컬럼을 더 출력해야 하는 경우 별표(*) 앞에 '테이블명'을 붙여준다
SELECT *, empno      --> 오류
  FROM emp;

SELECT emp.*, empno  --> (O)
  FROM emp;
  
SELECT empno, empno  --> (O)
  FROM emp;