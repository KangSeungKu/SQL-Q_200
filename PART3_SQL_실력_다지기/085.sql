-- 085) 서브 쿼리를 사용하여 데이터 입력하기

CREATE TABLE emp2
    as
        SELECT *
          FROM emp
          WHERE 1 = 2;

--> EMP테이블의 구조만 가져와서 EMP2테이블을 생성하는 쿼리

INSERT INTO emp2(empno, ename, sal, deptno)
  SELECT empno, ename, sal, deptno
    FROM emp
    WHERE deptno = 10;
    
--> 부서번호가 10인 사원들을 한번에 입력
--  이 때 사용되는 서브쿼리문의 컬럼 순서는 INSERT절 괄호 안의 컬럼 순서대로 작성