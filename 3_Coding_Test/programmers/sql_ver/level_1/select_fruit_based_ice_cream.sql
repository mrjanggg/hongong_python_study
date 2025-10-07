-- 문제: 프로그래머스 Lv.3 '과일로 만든 아이스크림 고르기'
-- 설명: 아이스크림의 상반기 총주문량이 3,000보다 높고, 주 성분이 '과일'인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025

-- 풀이:
-- 1. 아이스크림의 총주문량(FIRST_HALF 테이블)과 성분 정보(ICECREAM_INFO 테이블)를 연결하기 위해 FLAVOR 컬럼을 기준으로 INNER JOIN을 수행합니다.
-- 2. SELECT 절에서 아이스크림 맛(FIRST_HALF.FLAVOR)을 선택합니다.
-- 3. WHERE 절에서 두 가지 조건을 AND로 결합합니다.
--    - 주 성분 조건: INGREDIENT_TYPE이 'fruit_based'와 일치하는지 확인합니다.
--    - 총주문량 조건: TOTAL_ORDER가 3000 이상인지 확인합니다.
-- 4. ORDER BY 절에서 TOTAL_ORDER를 내림차순(DESC)으로 정렬하여 총주문량이 큰 순서대로 결과를 출력합니다.

SELECT FIRST_HALF.FLAVOR
FROM FIRST_HALF
    INNER JOIN ICECREAM_INFO
    ON FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
WHERE INGREDIENT_TYPE = 'fruit_based' AND TOTAL_ORDER >= 3000
ORDER BY TOTAL_ORDER DESC;