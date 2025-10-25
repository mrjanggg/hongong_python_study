-- 문제: 프로그래머스 Lv.3 '대여 기록이 존재하는 자동차 리스트 구하기'
-- 설명: '세단' 종류의 자동차 중 2022년 10월에 대여를 시작한 기록이 있는 자동차들의 
--       ID 리스트를 중복 없이 조회하고, 자동차 ID를 기준으로 내림차순 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341

-- 풀이:
-- 1. CAR 테이블(C)과 HISTORY 테이블(H)을 CAR_ID로 INNER JOIN 합니다.
-- 2. WHERE 절에서 CAR_TYPE이 '세단'이면서 START_DATE가 '2022-10%'인 조건을 AND로 연결하여 필터링합니다. (LIKE 함수 활용)
-- 3. 중복을 제거하기 위해 DISTINCT를 사용하고, CAR_ID를 SELECT 합니다.
-- 4. 결과를 CAR_ID 내림차순(DESC)으로 ORDER BY합니다.

SELECT
    DISTINCT C.CAR_ID
FROM
    CAR_RENTAL_COMPANY_CAR AS C
INNER JOIN 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H ON C.CAR_ID = H.CAR_ID
WHERE
    C.CAR_TYPE = '세단' 
    AND H.START_DATE LIKE '2022-10%'
ORDER BY 
    C.CAR_ID DESC;