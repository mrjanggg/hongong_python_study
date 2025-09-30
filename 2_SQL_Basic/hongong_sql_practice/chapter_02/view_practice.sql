-- 뷰 연습
CREATE VIEW member_view
AS
	SELECT * FROM member;
    
-- member 테이블이 아니라 member_view에 접근
SELECT * FROM member_view;