-- 파일명: classify_rental_period.sql
-- 문제: 프로그래머스 Lv.1 '자동차 대여 기록에서 장기/단기 대여 구분하기'
-- 설명: 대여 시작일이 2022년 9월인 기록 중, 총 대여 기간이 30일 이상이면 '장기 대여', 
--       그렇지 않으면 '단기 대여'로 구분하여 기록 ID, 차 ID, 시작일, 종료일, 대여 타입을 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138

-- 풀이:
-- 1. 조건 필터링 (WHERE):
--    - `YEAR(START_DATE) = 2022 AND MONTH(START_DATE) = 9`로 2022년 9월 대여 건만 정확히 추출합니다.
-- 2. 기간 계산 및 분류 (CASE WHEN):
--    - 당일 대여/반납(1일)을 반영하기 위해 `DATEDIFF(END_DATE, START_DATE) + 1`로 실제 이용 일수를 구합니다.
--    - 30일 이상은 '장기 대여', 미만은 '단기 대여'로 분기하여 `RENT_TYPE`을 생성합니다.
-- 3. 포맷 변환 및 정렬 (SELECT & ORDER BY):
--    - `DATE_FORMAT`을 적용해 날짜의 시·분·초를 제외하고 'YYYY-MM-DD' 형태로 맞춥니다.
--    - `HISTORY_ID`를 기준으로 최신 대여 기록부터 내림차순(`DESC`) 정렬합니다.

SELECT HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(START_DATE,"%Y-%m-%d") AS START_DATE,
    DATE_FORMAT(END_DATE,"%Y-%m-%d") AS END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE) +1 >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE YEAR(START_DATE) = 2022 AND MONTH(START_DATE) = 9
ORDER BY HISTORY_ID DESC;