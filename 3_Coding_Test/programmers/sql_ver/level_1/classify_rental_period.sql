-- 문제: 프로그래머스 Lv.1 '자동차 대여 기록에서 장기/단기 대여 구분하기'
-- 설명: 대여 시작일이 2022년 9월인 기록 중, 총 대여 기간이 30일 이상이면 '장기 대여', 그렇지 않으면 '단기 대여'로 구분하여 기록 ID, 차 ID, 시작일, 종료일, 대여 타입을 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138

-- 풀이:
-- 1. `SELECT` 절에서 ID와 CAR_ID를 선택하고, `DATE_FORMAT`을 사용하여 시작일과 종료일을 'YYYY-MM-DD' 형식으로 변환합니다.
-- 2. `CASE` 표현식을 사용하여 대여 기간을 계산합니다. 기간 계산 시 시작일과 종료일을 모두 포함하기 위해 `DATEDIFF(END_DATE, START_DATE) + 1`을 사용하고, 이 값이 30 이상이면 '장기 대여', 아니면 '단기 대여'로 `RENT_TYPE` 컬럼에 출력합니다.
-- 3. `WHERE` 절에 `LIKE '2022-09-%'` 조건을 사용하여 대여 시작일이 2022년 9월인 기록만 필터링합니다.
-- 4. `ORDER BY HISTORY_ID DESC`를 사용하여 기록 ID를 기준으로 내림차순 정렬합니다.

SELECT
    HISTORY_ID,
    CAR_ID,
    date_format(START_DATE, '%Y-%m-%d') AS START_DATE,
    date_format(END_DATE, '%Y-%m-%d') AS END_DATE,
    (CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN "장기 대여"
        ELSE "단기 대여"
    END) AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE LIKE '2022-09-%'
ORDER BY HISTORY_ID DESC;