-- 문제: 프로그래머스 Lv.1 '강원도에 위치한 생산공장 목록 출력하기'
-- 설명: 식품 공장 테이블(FOOD_FACTORY)에서 주소(ADDRESS)가 '강원도'에 해당하는 공장의 ID, 이름, 주소를 FACTORY_ID 순으로 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131112

-- 풀이:
-- 1. `SELECT` 절에 `FACTORY_ID`, `FACTORY_NAME`, `ADDRESS` 컬럼을 명시하여 필요한 정보를 선택합니다.
-- 2. `FROM` 절에서 `FOOD_FACTORY` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `ADDRESS LIKE "%강원도%"`를 사용하여 주소에 '강원도'라는 문자열이 포함된 모든 공장을 필터링합니다.
-- 4. `ORDER BY FACTORY_ID ASC`를 사용하여 공장 ID를 기준으로 오름차순으로 정렬합니다.

SELECT FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE "%강원도%"
ORDER BY FACTORY_ID ASC