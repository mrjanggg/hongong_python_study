-- 문제: 프로그래머스 Lv.2 '경기도에 위치한 식품창고 목록 출력하기'
-- 설명: 경기도에 있는 창고의 ID, 이름, 주소, 그리고 냉동시설 여부를 조회하는 문제입니다. 냉동시설 여부가 NULL인 경우 'N'으로 출력합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131114

-- 풀이:
-- 1. SELECT 절에 WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS를 명시하여 원하는 컬럼을 선택합니다.
-- 2. IF() 함수를 사용하여 FREEZER_YN 컬럼의 값이 NULL이면 'N'을, 그렇지 않으면 원래 값을 출력하도록 설정하고, 이 컬럼의 이름을 FREEZER_YN으로 지정합니다.
-- 3. FROM 절에서 FOOD_WAREHOUSE 테이블을 지정합니다.
-- 4. WHERE 절에 LIKE 키워드와 '%' 와일드카드를 사용하여 ADDRESS가 '경기도'로 시작하는 행만 필터링합니다.

SELECT WAREHOUSE_ID,WAREHOUSE_NAME,ADDRESS,IF(FREEZER_YN IS NULL, 'N', FREEZER_YN) AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기도%'