-- 051) 데이터 분석 함수로 비율 출력하기 (RATIO_TO_REPORT)
SELECT empno, ename, sal, RATIO_TO_REPORT(sal) OVER () as 비율
  FROM emp
  WHERE deptno = 20;
  
--> 20번인 부서 내에서 자신의 월급 비율이 어떻게 되는지 출력하는 쿼리
--> 20번인 사원들의 월급의 합계는 10875 
    --> JONES의 경우 2975/10875에 해당되는 0.2735632183908045977011494252873563218391가 나옴
    
SELECT empno, ename, sal, RATIO_TO_REPORT(sal) OVER () as 비율,
                            SAL/SUM(sal) OVER () as "비교 비율"
  FROM emp
  WHERE deptno = 20;
  
--> RATIO_TO_REPORT(sal) OVER () == SAL/SUM(sal) OVER ()