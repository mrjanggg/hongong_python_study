-- 문제: 프로그래머스 lv.3 '조건별로 분류하여 주문상태 출력하기'
-- 설명: FOOD_ORDER 테이블에서 출고일자(OUT_DATE)를 기준으로 주문 상태를 분류하여
--       주문 ID, 제품 ID, 출고일(YYYY-MM-DD), 그리고 출고 여부를 조회해야 한다.
--       출고 여부는 2022년 5월 1일 이전: '출고완료'
--       출고일이 NULL: '출고미정'
--       그 외: '출고대기'
--       결과는 주문 ID를 기준으로 오름차순(ASC) 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131113

-- 풀이:
-- 1. 출고일(OUT_DATE)을 DATE_FORMAT 함수를 사용하여 'YYYY-MM-DD' 형식으로 맞춘다.
-- 2. CASE 문을 사용하여 출고 여부(출고완료, 출고미정, 출고대기)를 조건에 따라 분류한다.
--    (NULL 체크를 먼저 수행하는 것이 일반적이나, 출고일이 '2022-05-01' 이하인 레코드를
--    먼저 처리하는 것이 문제의 조건에 맞다.)
-- 3. 결과를 ORDER_ID 오름차순(ASC)으로 정렬한다.

SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
        WHEN OUT_DATE IS NULL THEN '출고미정'
        ELSE '출고대기'
    END AS 출고여부
FROM
    FOOD_ORDER
ORDER BY
    ORDER_ID ASC;