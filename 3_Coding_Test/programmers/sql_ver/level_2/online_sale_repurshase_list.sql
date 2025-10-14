-- 문제: 프로그래머스 Lv.2 '재구매가 일어난 상품과 회원 리스트 구하기'
-- 설명: ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 2회 이상 구매한(재구매) 데이터의 
--       회원 ID와 상품 ID를 조회하고, 회원 ID 오름차순, 상품 ID 내림차순으로 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536

-- 풀이:
-- 1. 회원 ID와 상품 ID를 기준으로 GROUP BY를 수행합니다.
-- 2. HAVING 절을 사용하여 그룹별 판매 기록의 수(COUNT)가 2 이상인(재구매가 일어난) 조합만 필터링합니다.
-- 3. 결과를 USER_ID 오름차순, PRODUCT_ID 내림차순으로 ORDER BY합니다.

SELECT
    USER_ID,
    PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID, PRODUCT_ID
HAVING
    COUNT(*) >= 2
ORDER BY
    USER_ID ASC, 
    PRODUCT_ID DESC;