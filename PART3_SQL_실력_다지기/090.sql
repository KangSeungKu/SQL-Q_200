-- 090) 계층형 질의문으로 서열을 주고 데이터 출력하기 (2)
SELECT rpad(' ', level*3) || ename as employee, level, sal, job
  FROM emp
  START WITH ename = 'KING'
  CONNECT BY prior empno = mgr AND ename != 'BLAKE';
  
-- 하나의 노드를 제거하기 위해서는 낫(!=)조건을 걸어야 한다.
-- WHERE절에 이 조건을 줄 경우 그 하나의 노드에 대해서만 적용되지만
-- CONNECT절에 조건을 줄 경우 그 노드를 포함하고 있는 모두를 제거할 수 있다.