DELIMITER //
CREATE PROCEDURE myProc() /*스토어드 프로시저 이름 지정*/
BEGIN
		SELECT * FROM member WHERE member_name = '나훈아';
        SELECT * FROM product WHERE product_name = '삼각김밥';
END //
DELIMITER ;

/*호출하기*/
CALL myProc();