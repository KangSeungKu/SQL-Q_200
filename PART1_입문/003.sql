-- 003) 컬럼 별칭을 사용하여 출력되는 컬럼명 변경하기
SELECT empno as 사원번호, ename as 사원이름, sal as "salary"
  FROM emp;
--> '사원 번호'처럼 띄워쓰기를 하면 오류생김

-- 컬럼 별칭에 더블 쿼테이션 마크(")를 감싸줘야 하는 경우
--   1) 대소문자를 구분하여 출력할 때
--   2) 공백문자를 출력할 때
--   3) 특수문자를 출력할 때($, _, #만 가능)

-- 별칭을 사용하면 ORDER BY절에서 유용
SELECT ename, sal * (12 + 3000) as 월급
  FROM emp
  ORDER BY 월급 desc;