-- 089) 계층형 질의문으로 서열을 주고 데이터 출력하기 (1)
SELECT rpad('   ', level+3) || ename as employee, level, sal, job
  FROM emp
  START WITH ename='KING'
  CONNECT BY prior empno = mgr;
  
-- 계층형 용어
-- 노드 : 표시된 항목
-- 레벨 : 트리 구조에서 각각의 계층
-- 루트 : 트리 구조에서 최상위에 있는 노드
-- 부모 : 트리 구조에서 상위에 있는 노드
-- 자식 : 트리 구조에서 하위에 있는 노드

-- START WITH : 루트 노드(최상위 노드)의 데이터를 지정
-- CONNECT BY : 부모 노드와 자식 노드들 간의 관계를 지정하는 절
--   ex) empno(자식노드 컬럼) = mgr(부모노드 컬럼) <PRIOR 기준>