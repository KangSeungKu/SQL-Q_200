-- 086) 서브 쿼리를 사용하여 데이터 수정하기

UPDATE emp
   SET sal = (SELECT sal
                FROM emp
                WHERE ename = 'ALLEN')
WHERE job = 'SALESMAN';

-- UPDATE절, SET절, WHERE절 모두 서브 쿼리 사용 가능

UPDATE emp
   SET (sal, comm) = (SELECT sal, comm
                        FROM emp
                        WHERE ename = 'ALLEN')
WHERE ename = 'SCOTT';

--> 여러개의 행을 한 번에 갱신