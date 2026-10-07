-- 파일명: most_expensive_product_info.sql
-- 문제: 프로그래머스 Lv.2 '가격이 제일 비싼 식품의 정보 출력하기'
-- 설명: 식품 테이블(FOOD_PRODUCT)에서 가격이 제일 비싼 식품의 모든 정보를 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115

-- 풀이:
-- 1. `ORDER BY PRICE DESC`를 사용하여 식품들의 가격을 기준으로 내림차순(가장 비싼 순) 정렬합니다.
-- 2. `LIMIT 1`을 사용하여 정렬된 결과 중 맨 위에 위치한 가장 비싼 식품 1건의 레코드만 가져옵니다.
-- 3. `SELECT` 절에서 해당 식품의 모든 정보(PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE)를 조회합니다.

SELECT PRODUCT_ID,
        PRODUCT_NAME,
        PRODUCT_CD,
        CATEGORY,
        PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1;