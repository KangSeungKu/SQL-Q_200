-- 096) 복잡한 쿼리를 단순하게 하기 (2) (VIEW)
CREATE VIEW EMP_VIEW2
AS
SELECT deptno, round(avg(sal)) "평균 월급"
  FROM emp
  GROUP BY deptno;
  
select * from emp_view2;

-- 뷰 생성 시 함수나 그룹 함수를 작성할 때는 반드시 컬럼 별칭을 사용해야 함.
-- 복합 뷰 : 함수나 그룹 함수를 포함하고 있는 뷰(단순 뷰와 달리 수정이 불가능할 수 있음)