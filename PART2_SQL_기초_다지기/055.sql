-- 055) 데이터 분석 함수로 출력 결과 넘버링 하기(ROW_NUMBER)
SELECT empno, ename, sal, RANK() OVER (ORDER BY sal DESC) RANK,
        DENSE_RANK() OVER (ORDER BY sal DESC) DENSE_RANK,
        ROW_NUMBER() OVER (ORDER BY sal DESC) 번호
  FROM emp
  WHERE deptno = 20;
  
-- ROW_NUMBER() 함수는 OVER 다음 괄호 안에 반드시 ORDER BY절을 기술해야 한다.

-- 부서별 순위를 출력하는 쿼리
SELECT deptno, ename, sal, ROW_NUMBER() OVER(PARTITION BY deptno ORDER BY sal DESC) 번호
  FROM emp
  WHERE deptno in (10, 20);