-- 문제: 프로그래머스 Lv.1 '특정 옵션이 포함된 자동차 리스트 구하기'
-- 설명: 자동차 대여 회사 테이블(CAR_RENTAL_COMPANY_CAR)에서 '네비게이션' 옵션이 포함된 자동차의 모든 정보를 CAR_ID 기준 내림차순으로 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343

-- 풀이:
-- 1. `SELECT *`를 사용하여 해당되는 모든 컬럼의 정보를 선택합니다.
-- 2. `FROM` 절에서 `CAR_RENTAL_COMPANY_CAR` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `options LIKE '%네비게이션%'`를 사용하여 options 컬럼 안에 '네비게이션' 문자열이 포함된 모든 행을 필터링합니다. `%` 와일드카드를 사용해 문자열의 앞뒤 어느 곳에 있어도 찾을 수 있게 합니다.
-- 4. `ORDER BY car_id DESC`를 사용하여 자동차 ID를 기준으로 내림차순으로 정렬합니다.

SELECT *
FROM CAR_RENTAL_COMPANY_CAR
WHERE options LIKE '%네비게이션%'
ORDER BY car_id DESC;