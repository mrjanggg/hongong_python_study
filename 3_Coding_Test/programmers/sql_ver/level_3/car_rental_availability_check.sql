-- 문제: 프로그래머스 lv.3 '자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기'
-- 설명: CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 모든 CAR_ID에 대해
--       특정 날짜('2022-10-16')에 '대여중'인지 '대여 가능'한지 구분하는 AVAILABILITY 컬럼을 추가해야 한다.
--       (기준일: 2022년 10월 16일. 반납일이 2022-10-16인 경우도 '대여중'으로 간주)
--       결과는 자동차 ID(CAR_ID)를 기준으로 내림차순(DESC) 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157340

-- 풀이:
-- 1. 각 자동차(CAR_ID)별로 그룹화(GROUP BY)한다.
-- 2. 내부 CASE 문으로 각 대여 기록이 기준일('2022-10-16')을 포함하는지 확인한다. (포함하면 1, 아니면 0 반환)
--    (날짜 사이에 포함되는지 확인하기 위해 BETWEEN START_DATE AND END_DATE를 사용한다.)
-- 3. 외부 MAX(CASE ...)를 사용하여, 해당 자동차의 모든 기록 중 '대여중(1)' 상태가 단 한 번이라도 있었는지 확인한다.
--    (MAX 값이 1이면 해당 자동차는 기준일에 '대여중'이었음을 의미)
-- 4. 외부 CASE 문으로 최종 AVAILABILITY 값을 '대여중' 또는 '대여 가능'으로 표시한다.
-- 5. 결과를 CAR_ID 내림차순(ORDER BY DESC)으로 정렬한다.

SELECT
    CAR_ID,
    CASE
        WHEN MAX(CASE 
                    WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE 
                    THEN 1 
                    ELSE 0 
                 END) = 1
        THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
ORDER BY
    CAR_ID DESC;