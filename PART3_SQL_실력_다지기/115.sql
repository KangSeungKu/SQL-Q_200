-- 115) SQL로 알고리즘 문제 풀기 (5) (마름모 출력)
UNDEFINE p_num
ACCEPT p_num prompt '숫자 입력 : '

-- 마름모(라고 하는데 책에 있는 내용이 안맞는 것 같음)
SELECT lpad(' ', &p_num-level, ' ') || rpad('★', level, '★') as star
  FROM DUAL
  CONNECT BY level < &p_num+1
UNION ALL
SELECT lpad(' ', level, ' ') || rpad('★', (&p_num)-level, '★') as star
  FROM DUAL
  CONNECT BY level < &p_num;
  
-- 이게 마름모 모양이 나옴
SELECT lpad(' ', &p_num-level, ' ') || rpad('★', level+(level-1), '★') as star
  FROM DUAL
  CONNECT BY level < &p_num+1
UNION ALL
SELECT lpad(' ', level, ' ') || rpad('★', (&p_num * 2)-(level*2+1), '★') as star
  FROM DUAL
  CONNECT BY level < &p_num;