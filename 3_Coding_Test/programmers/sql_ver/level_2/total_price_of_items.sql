-- 문제: 프로그래머스 Lv.2 '조건에 맞는 아이템들의 가격의 총합 구하기'
-- 설명: 아이템 정보 테이블(ITEM_INFO)에서 아이템의 희귀도(RARITY)가 'LEGEND'인 아이템들의 가격(PRICE) 총합을 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273709

-- 풀이:
-- 1. `SUM(PRICE)` 함수를 사용하여 `PRICE` 컬럼 값의 총합을 계산하고, `AS TOTAL_PRICE`로 컬럼명을 지정합니다.
-- 2. `FROM` 절에서 `ITEM_INFO` 테이블을 지정합니다.
-- 3. `WHERE` 절에서 `RARITY = 'LEGEND'` 조건을 사용하여 희귀도가 'LEGEND'인 아이템만 필터링합니다.

SELECT
    SUM(PRICE) AS TOTAL_PRICE
FROM
    ITEM_INFO
WHERE
    RARITY ='LEGEND';