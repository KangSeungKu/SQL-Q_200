-- 067) 집합 연산자로 데이터를 위아래로 연결하기 (1) (UNION ALL)
SELECT deptno, sum(sal)
  FROM emp
  GROUP BY deptno
UNION ALL
SELECT TO_NUMBER(null) as deptno, sum(sal)
  FROM emp;
  
-- ※ 집합 연산자 작성 시 주의사항
--  1) UNION ALL 위쪽 쿼리와 아래쪽 쿼리 컬럼의 개수가 동일해야 합니다.
--  2) UNION ALL 위쪽 쿼리와 아래쪽 쿼리 컬럼의 데이터 타입이 동일해야 합니다.
--  3) 결과로 출력되는 컬럼명은 위쪽 쿼리의 컬럼명으로 출력됩니다.
--  4) ORDER BY절은 제일 아래쪽 쿼리에만 작성할 수 있습니다.

-- 또한 중복을 제거하지 않고 그대로 출력함.