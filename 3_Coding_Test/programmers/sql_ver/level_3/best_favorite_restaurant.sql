-- 문제: 프로그래머스 lv.3 '즐겨찾기가 가장 많은 식당 정보 출력하기'
-- 설명: REST_INFO 테이블에서 음식 종류별로 즐겨찾기수(FAVORITES)가 가장 많은 식당의
--       음식 종류, ID, 식당 이름, 즐겨찾기수를 조회해야 한다.
--       결과는 음식 종류를 기준으로 내림차순(DESC) 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123

-- 풀이:
-- 1. 서브쿼리를 사용하여 먼저 각 음식 종류(FOOD_TYPE)별 최대 즐겨찾기 수(MAX(FAVORITES))를 구한다. (GROUP BY)
-- 2. 메인 쿼리에서 (FOOD_TYPE, FAVORITES) 쌍이 서브쿼리의 결과와 일치하는 레코드만 WHERE 절의 IN 연산자로 필터링한다.
--    (이 방법은 음식 종류별 최대 즐겨찾기 수가 동률인 식당이 여러 개 있더라도 모두 출력할 수 있다.)
-- 3. 최종 결과를 FOOD_TYPE 기준으로 내림차순(DESC) 정렬한다.

SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM
    REST_INFO
WHERE
    (FOOD_TYPE, FAVORITES) IN (
        SELECT FOOD_TYPE, MAX(FAVORITES)
        FROM REST_INFO
        GROUP BY FOOD_TYPE
    )
ORDER BY
    FOOD_TYPE DESC;