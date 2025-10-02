-- 문제: 프로그래머스 Lv.1 '인기있는 아이스크림'
-- 설명: 아이스크림의 총주문량을 기준으로 내림차순 정렬하고, 총주문량이 같다면 출하 번호를 기준으로 오름차순 정렬하여 아이스크림 맛을 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024

-- 풀이:
-- 1. `SELECT` 절에 `FLAVOR` 컬럼을 명시하여 아이스크림 맛을 선택합니다.
-- 2. `FROM` 절에서 `FIRST_HALF` 테이블을 지정합니다.
-- 3. `ORDER BY` 절에 `TOTAL_ORDER DESC`를 사용하여 총주문량을 기준으로 내림차순 정렬합니다.
-- 4. `SHIPMENT_ID ASC`를 추가하여 총주문량이 같은 경우 출하 번호를 기준으로 오름차순 정렬합니다.

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;