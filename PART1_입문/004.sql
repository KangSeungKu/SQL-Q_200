-- 004) 연결 연산자 사용하기(||)
SELECT ename || sal
  FROM emp;
  
SELECT ename || '의 월급은 ' || sal || '입니다 ' as 월급정보
  FROM emp;
  
SELECT ename || '의 직업은 ' || job || '입니다 ' as 직업정보
  FROM emp;