-- 019) 문자에서 특정 철자의 위치 출력하기 (INSTR)
SELECT INSTR('SMITH', 'M')
  FROM DUAL;
  
SELECT INSTR('abcdef@naver.com', '@')
  FROM DUAL;
  
-- 일부 잘라내기 (SUBSTR)
SELECT SUBSTR('abcdefgh@naver.com', INSTR('abcdefgh@naver.com', '@') + 1)
  FROM DUAL;
  
SELECT RTRIM( SUBSTR('abcdefgh@naver.com', INSTR('abcdefgh@naver.com', '@') +1 ), '.com')
  FROM DUAL;
  
-- RTRIM : 정확히 오른쪽부터 일치하는 글자부터 자름 .co (X), om (O)