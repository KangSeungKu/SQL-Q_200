-- 017) 문장에서 특정 철차 추출하기 (SUBSTR)
SELECT SUBSTR('SMITH', 1, 3)
  FROM DUAL;
  
-- java나 C#과 같은 프로그래밍언어의 subString()함수와는 다르게
-- 문자열의 범위를 넘어가면 오류가 아니 null을 반환하거나 전체글자를 반환
-- SUBSTR([추출할 문자], [시작위치], [추출할 문자 갯수]);