-- 문제: 프로그래머스 Lv.2 '노선별 평균 역 사이 거리 조회하기'
-- 설명: SUBWAY_DISTANCE 테이블에서 노선(ROUTE)별로 총 누계 거리와 평균 역 사이 거리를 조회해야 합니다. 
--       총 거리는 소수점 둘째 자리에서 반올림(첫째 자리까지), 평균 거리는 소수점 셋째 자리에서 반올림(둘째 자리까지)하고, 
--       결과에 'km' 단위를 붙여 총 거리를 기준으로 내림차순 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284531

-- 풀이:
-- 1. ROUTE를 기준으로 GROUP BY를 수행합니다.
-- 2. 총 누계 거리는 SUM 함수를 사용하여 계산하고 ROUND 함수로 소수점 첫째 자리까지 반올림한 후, CONCAT 함수로 'km' 단위를 붙여 출력합니다.
-- 3. 평균 역 사이 거리는 AVG 함수를 사용하여 계산하고 ROUND 함수로 소수점 둘째 자리까지 반올림한 후, CONCAT 함수로 'km' 단위를 붙여 출력합니다.
-- 4. ORDER BY 절은 총 누계 거리를 기준으로 내림차순(DESC) 정렬합니다. (단위를 제외한 숫자 값으로 정렬하기 위해 ROUND(SUM(...))을 사용)

SELECT
    ROUTE,
    CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,
    CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
FROM
    SUBWAY_DISTANCE
GROUP BY
    ROUTE
ORDER BY
    (ROUND(SUM(D_BETWEEN_DIST), 1)) DESC;