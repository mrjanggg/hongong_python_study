-- 문제: 프로그래머스 Lv.1 '가장 비싼 상품 구하기'
-- 설명: 상품 테이블(PRODUCT)에서 가장 높은 가격의 상품을 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131697

-- 풀이:
-- 1. `MAX()` 함수를 사용하여 `PRICE` 컬럼의 최댓값을 구합니다.
-- 2. `AS MAX_PRICE`를 사용하여 결과 컬럼의 이름을 'MAX_PRICE'로 지정합니다.
-- 3. `FROM` 절에서 `PRODUCT` 테이블을 지정합니다.

SELECT MAX(PRICE) AS MAX_PRICE
FROM PRODUCT