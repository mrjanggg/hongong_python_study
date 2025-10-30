-- 문제: 프로그래머스 Lv.3 '조건에 맞는 사용자 정보 조회하기'
-- 설명: 3건 이상 중고 거래 게시물을 등록한 사용자들의 ID, 닉네임, 전체주소, 전화번호를 조회해야 합니다. 
--       전체 주소와 전화번호는 특정 형식으로 가공해야 하며, 결과는 회원 ID 내림차순으로 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
 
-- 풀이:
-- 1. USED_GOODS_BOARD(B)와 USED_GOODS_USER(U)를 WRITER_ID와 USER_ID로 INNER JOIN 합니다.
-- 2. WRITER_ID를 기준으로 GROUP BY를 수행합니다.
-- 3. HAVING COUNT 함수를 사용하여 게시물 수가 3개 이상인 사용자만 필터링합니다.
-- 4. 전체 주소는 CONCAT 함수를 사용하여 CITY, STREET_ADDRESS1, STREET_ADDRESS2를 공백으로 연결합니다.
-- 5. 전화번호는 SUBSTRING과 CONCAT을 사용하여 'XXX-XXXX-XXXX' 형식으로 가공합니다.
-- 6. USER_ID 내림차순(DESC)으로 ORDER BY합니다.

SELECT 
    U.USER_ID,
    U.NICKNAME,
    CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, ' ', U.STREET_ADDRESS2) AS 전체주소,
    CONCAT(
        SUBSTRING(U.TLNO, 1, 3), 
        '-', 
        SUBSTRING(U.TLNO, 4, 4), 
        '-', 
        SUBSTRING(U.TLNO, 8, 4)  
    ) AS 전화번호
FROM
    USED_GOODS_BOARD AS B
INNER JOIN
    USED_GOODS_USER AS U
    ON B.WRITER_ID = U.USER_ID
GROUP BY
    B.WRITER_ID  -- USER_ID(WRITER_ID)를 기준으로 게시물 수를 집계합니다.
HAVING
    COUNT(*) >= 3
ORDER BY
    U.USER_ID DESC;