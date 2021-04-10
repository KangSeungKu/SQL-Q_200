-- 078) 데이터 입력하기 (INSERT)
INSERT INTO emp (empno, ename, sal, hiredate, job)
  VALUES(2812, 'JACK', 3500, TO_DATE('2019/06/05', 'RRRR/MM/DD'), 'ANALYST');

commit;  
-- INSERT시 넣는 컬럼을 적지 않으면 암시적으로 NULL값이 입력되고,
-- 명시적으로는 ''이나 NULL값을 넣어주면 된다.
-- DML문
