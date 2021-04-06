-- 074) 서브 쿼리 사용하기 (4) (EXISTS와 NOT EXISTS)
SELECT *
  FROM dept d
  WHERE EXISTS (SELECT *
                   FROM emp e
                   WHERE e.deptno = d.deptno);
                   
--> DEPT 테이블에 존재하는 부서 번호가 EMP 테이블에도 존재하는지 검색하는 쿼리

-- 조건이 되는 테이블에서 찾으면 검색을 멈추고 다음값을 검색하는 방식으로 처리됨

SELECT *
  FROM dept d
  WHERE NOT EXISTS (SELECT *
                   FROM emp e
                   WHERE e.deptno = d.deptno);
--> 반대로 존재하지 않는 부서 검색