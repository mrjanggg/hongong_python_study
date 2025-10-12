-- 문제: 프로그래머스 Lv.2 '카테고리 별 상품 개수 구하기'
-- 설명: 상품 테이블(PRODUCT)에서 상품 코드를 기준으로 카테고리(상품 코드의 앞 2자리) 별 상품 개수를 구하고, 카테고리 순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529

-- 풀이:
-- 1. `SUBSTRING(PRODUCT_CODE, 1, 2)` 함수를 사용하여 상품 코드의 첫 번째 자리부터 2글자(카테고리)만 추출하고, `AS CATEGORY`로 컬럼명을 지정합니다.
-- 2. `GROUP BY CATEGORY`를 사용하여 추출한 카테고리별로 행을 그룹화합니다.
-- 3. `COUNT(*)` 함수를 사용하여 각 그룹(카테고리)에 속한 상품의 개수를 계산하고, `AS PRODUCTS`로 컬럼명을 지정합니다.
-- 4. `ORDER BY CATEGORY ASC`를 사용하여 카테고리 코드를 기준으로 오름차순 정렬합니다.

SELECT
    SUBSTRING(PRODUCT_CODE, 1, 2) AS CATEGORY,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY
    CATEGORY
ORDER BY
    CATEGORY ASC;