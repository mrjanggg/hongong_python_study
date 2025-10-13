-- 문제: 프로그래머스 Lv.2 '상품 별 오프라인 매출 구하기'
-- 설명: 상품 테이블(PRODUCT)과 오프라인 판매 테이블(OFFLINE_SALE)을 결합하여, 상품 코드 별 오프라인 총 매출액을 구하고, 총 매출액 기준 내림차순, 상품 코드 기준 오름차순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533

-- 풀이:
-- 1. `INNER JOIN`을 사용하여 상품 정보 테이블(PRODUCT)과 판매 기록 테이블(OFFLINE_SALE)을 `PRODUCT_ID`로 연결합니다.
-- 2. `SELECT` 절에서 `SUM(PRODUCT.PRICE * OFFLINE_SALE.SALES_AMOUNT)`를 사용하여 (가격 * 판매량)의 총합인 매출을 계산하고, `AS SALES`로 컬럼명을 지정합니다.
-- 3. `GROUP BY PRODUCT.PRODUCT_CODE`를 사용하여 상품 코드별로 매출액을 집계합니다.
-- 4. `ORDER BY` 절에서 `SALES DESC` (매출 내림차순), `PRODUCT_CODE ASC` (상품 코드 오름차순) 순으로 정렬합니다.

SELECT
    PRODUCT.PRODUCT_CODE,
    SUM(PRODUCT.PRICE * OFFLINE_SALE.SALES_AMOUNT) AS SALES
FROM
    PRODUCT
INNER JOIN
    OFFLINE_SALE ON PRODUCT.PRODUCT_ID = OFFLINE_SALE.PRODUCT_ID
GROUP BY
    PRODUCT.PRODUCT_CODE
ORDER BY
    SALES DESC, PRODUCT.PRODUCT_CODE ASC;