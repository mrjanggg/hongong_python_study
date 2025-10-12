-- 문제: 프로그래머스 Lv.2 '가격이 제일 비싼 식품의 정보 출력하기'
-- 설명: 식품 테이블(FOOD_PRODUCT)에서 가격이 제일 비싼 식품의 모든 정보를 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115

-- 풀이:
-- 1. `SELECT *`를 사용하여 모든 컬럼 정보를 선택합니다.
-- 2. `WHERE PRICE = (...)` 절을 사용하여, 선택된 행의 가격이 서브쿼리 결과와 일치하는지 필터링합니다.
-- 3. 서브쿼리(`SELECT MAX(PRICE) FROM FOOD_PRODUCT`)를 통해 `FOOD_PRODUCT` 테이블의 최댓값(가장 비싼 가격)을 먼저 구합니다.
-- 4. 결과적으로, 가격이 최댓값과 동일한 모든 상품의 정보를 반환합니다.

SELECT
    *
FROM
    FOOD_PRODUCT
WHERE
    PRICE = (
        SELECT
            MAX(PRICE)
        FROM
            FOOD_PRODUCT
    );