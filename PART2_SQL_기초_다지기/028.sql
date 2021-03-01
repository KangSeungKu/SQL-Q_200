-- 028) 특정 날짜 뒤에 오는 요일 날짜 출력하기(NEXT_DAY)
SELECT '2021/03/01' as 날짜, NEXT_DAY('2021/03/01', '월요일')
  FROM DUAL;
  
--> NEXT_DAY : 해당요일의 다음날짜를 가져옴
--             오늘이 월요일이면 다음 월요일의 날짜를 가져옴

SELECT NEXT_DAY(SYSDATE, '화요일') as "다음 날짜"
  FROM DUAL;
  
-- 100달 뒤에 오는 '화요일'은 무슨 날인지 보여주는 쿼리
SELECT NEXT_DAY(ADD_MONTHS(SYSDATE, 100), '화요일') as "다음 날짜"
  FROM DUAL;