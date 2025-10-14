-- 문제: 프로그래머스 Lv.2 '조건에 부합하는 중고거래 상태 조회하기'
-- 설명: 'USED_GOODS_BOARD' 테이블에서 2022년 10월 5일에 등록된 게시물의 
--       게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태(한글)를 조회하고, 
--       게시글 ID를 기준으로 내림차순 정렬하는 SQL 문을 작성해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672

-- 풀이:
-- 1. SELECT 문에 필요한 컬럼(BOARD_ID, WRITER_ID, TITLE, PRICE)을 나열합니다.
-- 2. STATUS 컬럼은 CASE 문을 사용하여 'SALE'은 '판매중', 'RESERVED'는 '예약중', 'DONE'은 '거래완료'로 변환합니다.
-- 3. WHERE 절에서 DATE_FORMAT 함수를 이용해 CREATED_DATE가 '2022-10-05'인 데이터만 필터링합니다.
-- 4. ORDER BY 절에서 BOARD_ID를 기준으로 내림차순(DESC) 정렬합니다.

SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE 
        WHEN STATUS = 'RESERVED' THEN '예약중'
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'DONE' THEN '거래완료'
    END AS STATUS
FROM
    USED_GOODS_BOARD
WHERE
    DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05' 
ORDER BY
    BOARD_ID DESC;