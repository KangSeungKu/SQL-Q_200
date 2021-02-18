-- 009) 산술 연산자 배우기 (*, /, +, -)

SELECT ename, sal*12 as 연봉
  FROM emp
  WHERE sal*12 >= 36000;
--> 연봉출력 쿼리

-- 괄호를 사용하여 우선순위를 바꿀 수 있음 (300+200) * 2

SELECT ename, sal, comm, sal + comm
  FROM emp
  WHERE deptno = 10; --> 산술식에서 컬럼값이 NULL인 경우 결과도 NULL이 된다.
--> 다음과 같이 수정한다.
SELECT sal + NVL(comm,0)
  FROM emp
  WHERE ename = 'KING';
  
-- NVL : NULL데이터를 0으로 출력해주는 함수