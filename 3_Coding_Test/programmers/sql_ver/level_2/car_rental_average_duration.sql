-- 문제: 프로그래머스 Lv.2 '자동차 평균 대여 기간 구하기'
-- 설명: CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 
--       자동차들의 ID와 평균 대여 기간을 조회해야 합니다. 평균 대여 기간은 소수점 둘째 자리에서 
--       반올림(소수점 첫째 자리까지 표시)하고, 평균 기간 내림차순, 자동차 ID 내림차순으로 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157342

-- 풀이:
-- 1. 대여 기간 계산은 DATEDIFF 함수에 + 1을 더하여 대여 시작일과 종료일을 모두 포함하도록 합니다.
-- 2. CAR_ID별로 GROUP BY하여 기간의 평균(AVG)을 계산하고, 결과를 ROUND 함수로 소수점 첫째 자리까지 반올림합니다.
-- 3. HAVING 절에서 평균 대여 기간이 7일 이상인 그룹만 필터링합니다.
-- 4. AVERAGE_DURATION은 내림차순(DESC), CAR_ID는 내림차순(DESC)으로 ORDER BY합니다.

SELECT
    CAR_ID,
    ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1), 1) AS AVERAGE_DURATION
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
HAVING
    AVERAGE_DURATION >= 7
ORDER BY
    AVERAGE_DURATION DESC, 
    CAR_ID DESC;