-- 문제: 프로그래머스 Lv.2 '입양 시각 구하기(1)'
-- 설명: 동물 보호소에서 입양이 발생한 기록 중 09시부터 19시까지의 각 시간대별 입양 건수를 시간 순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412

-- 풀이:
-- 1. `WHERE HOUR(DATETIME) >= 9 AND HOUR(DATETIME) <= 19`를 사용하여 입양 시각이 09시부터 19시 사이인 데이터만 사전에 필터링합니다. (표준 실행 순서에 맞춰 불필요한 행을 그룹화 전에 미리 제거)
-- 2. `GROUP BY HOUR(DATETIME)`을 사용하여 시간대별로 행을 그룹화합니다. (표준 문법 원칙에 따라 별칭 대신 함수 표현식 원형을 작성)
-- 3. `SELECT HOUR(DATETIME) AS HOUR, COUNT(ANIMAL_ID) AS COUNT`를 사용하여 추출한 시간대와 각 시간대별 입양 건수를 집계하고 별칭을 지정합니다.
-- 4. `ORDER BY HOUR ASC`를 사용하여 시간대 순서(오름차순)로 정렬합니다. (ORDER BY는 SELECT 이후에 실행되므로 별칭 사용 가능)

SELECT 
    HOUR(DATETIME) AS HOUR,
    COUNT(ANIMAL_ID) AS COUNT
FROM 
    ANIMAL_OUTS
WHERE
    HOUR(DATETIME) >= 9 AND 
    HOUR(DATETIME) <= 19
GROUP BY
    HOUR(DATETIME)
ORDER BY
    HOUR ASC;