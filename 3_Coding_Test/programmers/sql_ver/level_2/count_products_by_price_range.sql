-- 문제: 프로그래머스 Lv.2 '가격대 별 상품 개수 구하기'
-- 설명: 상품 테이블(PRODUCT)에서 만원 단위의 가격대별로 상품 개수를 구하고, 가격대 기준으로 오름차순 정렬하여 조회하는 문제입니다. (가격대 컬럼명은 PRICE_GROUP, 개수 컬럼명은 PRODUCTS)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131530

-- 풀이:
-- 1. `TRUNCATE(PRICE, -4)` 함수를 사용하여 PRICE 컬럼을 만원 단위(소수점 아래 4번째 자리에서 버림, 즉 만의 자리 미만 버림)로 버림 처리하고, `AS PRICE_GROUP`으로 컬럼명을 지정하여 가격대를 나눕니다.
-- 2. `GROUP BY PRICE_GROUP`을 사용하여 버림 처리된 가격대별로 행을 그룹화합니다.
-- 3. `COUNT(*) AS PRODUCTS`를 사용하여 각 가격대의 상품 개수를 계산하고 컬럼명을 'PRODUCTS'로 지정합니다.
-- 4. `ORDER BY PRICE_GROUP ASC`를 사용하여 가격대 기준으로 오름차순 정렬합니다.

SELECT
    TRUNCATE(PRICE, -4) AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY
    PRICE_GROUP
ORDER BY
    PRICE_GROUP ASC;