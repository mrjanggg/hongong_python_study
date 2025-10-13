-- 문제: 프로그래머스 Lv.2 '연도 별 평균 미세먼지 농도 조회하기'
-- 설명: '수원' 지역의 연도별 평균 미세먼지(PM10)와 초미세먼지(PM2.5) 농도를 소수점 셋째 자리에서 반올림하여 둘째 자리까지 출력하고, 연도순으로 정렬하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276036

-- 풀이:
-- 1. `WHERE LOCATION2 = '수원'` 조건을 사용하여 측정 지역이 '수원'인 데이터만 필터링합니다.
-- 2. `GROUP BY YEAR(YM)`을 사용하여 측정 일시(YM)에서 연도만 추출해 그룹화합니다.
-- 3. `SELECT` 절에서 `YEAR(YM)`을 'YEAR'로, `AVG(PM_VAL1)`과 `AVG(PM_VAL2)`를 각각 'PM10', 'PM2.5'로 계산하고, `ROUND(..., 2)` 함수를 사용하여 소수점 둘째 자리까지 반올림합니다.
-- 4. `ORDER BY YEAR ASC`를 사용하여 연도 순으로 오름차순 정렬합니다.

SELECT
    YEAR(YM) AS 'YEAR',
    ROUND(AVG(PM_VAL1), 2) AS 'PM10',
    ROUND(AVG(PM_VAL2), 2) AS 'PM2.5'
FROM
    AIR_POLLUTION
WHERE
    LOCATION2 = '수원'
GROUP BY
    YEAR(YM)
ORDER BY
    YEAR ASC;