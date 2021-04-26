-- 절대로 중복되지 않는 번호 만들기(SEQUENE)
CREATE SEQUENCE SEQ1    -- SEQ1이라는 시퀀스를 생성
START WITH 1            -- 첫 시작을 1로 한다
INCREMENT BY 1          -- 증가치를 1로 한다
MAXVALUE 100            -- 최대 숫자를 100으로 한다
NOCYCLE;                -- 최대 숫자가 지나면 다시 1부터 시작할지를 정한다

-- 시퀀스 : 일련번호 생성기
-- 사용은 NEXTVAL을 사용
INSERT INTO EMP02 VALUES(SEQ01.NEXTVAL, 'JACK', 3500);