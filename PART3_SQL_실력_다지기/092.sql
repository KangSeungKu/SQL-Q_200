-- 092) 계층형 질의문으로 서열을 주고 데이터 출력하기 (4)
SELECT ename, SYS_CONNECT_BY_PATH(ename, '/') as path
  FROM emp
  START WITH ename = 'KING'
  CONNECT BY prior empno = mgr;
  
-- SYS_CONNECT_BY_PATH : 두 번쨰 인자값으로 이름과 이름 사이를 연결해서 출력해줌
  
SELECT ename, LTRIM(SYS_CONNECT_BY_PATH(ename, '/'), '/') as path
  FROM emp
  START WITH ename = 'KING'
  CONNECT BY prior empno = mgr;
--> 첫 시작의 '/'을 제거