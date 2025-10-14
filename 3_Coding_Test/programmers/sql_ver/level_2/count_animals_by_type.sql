-- 문제: 프로그래머스 Lv.2 '동물 종류별 개수 구하기'
-- 설명: 동물 보호소에 들어온 동물의 종류별로 몇 마리인지 개수를 구하고, 동물 종류(ANIMAL_TYPE)를 기준으로 오름차순 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273710

-- 풀이:
-- 1. `GROUP BY ANIMAL_TYPE`을 사용하여 동물 종류별로 행을 그룹화합니다.
-- 2. `SELECT ANIMAL_TYPE, COUNT(*) AS count`를 사용하여 동물 종류와 각 그룹의 개수를 계산하고, 컬럼명을 'count'로 지정합니다.
-- 3. `ORDER BY ANIMAL_TYPE`을 사용하여 동물 종류를 기준으로 오름차순 정렬합니다.

SELECT
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM
    ANIMAL_INS
GROUP BY
    ANIMAL_TYPE
ORDER BY
    ANIMAL_TYPE;