-- 문제: 프로그래머스 Lv.2 '자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기'
-- 설명: 자동차 종류별로 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차 수를 구하고, 자동차 종류 순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137

-- 풀이:
-- 1. `WHERE` 절에서 `OR` 연산자와 `LIKE` 키워드를 사용하여 세 가지 옵션 중 하나라도 포함된 행을 필터링합니다.
-- 2. `GROUP BY car_type`을 사용하여 자동차 종류별로 행을 그룹화합니다.
-- 3. `SELECT CAR_TYPE, COUNT(*) AS CARS`를 사용하여 자동차 종류와 각 그룹의 개수를 계산하고, 컬럼명을 'CARS'로 지정합니다.
-- 4. `ORDER BY CAR_TYPE ASC`를 사용하여 자동차 종류를 기준으로 오름차순 정렬합니다.

SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM
    CAR_RENTAL_COMPANY_CAR
WHERE
    options LIKE '%통풍시트%' OR
    options LIKE '%열선시트%' OR
    options LIKE '%가죽시트%'
GROUP BY
    car_type
ORDER BY
    CAR_TYPE ASC;