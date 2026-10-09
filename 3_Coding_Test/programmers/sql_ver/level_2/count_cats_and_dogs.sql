-- 문제: 프로그래머스 Lv.2 '고양이와 개는 몇 마리 있을까'
-- 설명: 동물 보호소에 들어온 동물 중 고양이와 개의 수를 각각 구하고, 고양이를 개보다 먼저 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040

-- 풀이:
-- 1. `WHERE ANIMAL_TYPE = 'Cat' OR ANIMAL_TYPE = 'Dog'`를 사용하여 고양이와 개 데이터만 사전에 필터링합니다.
-- 2. `GROUP BY ANIMAL_TYPE`을 사용하여 동물 종류별로 행을 그룹화합니다.
-- 3. `SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS count`를 사용하여 동물 종류와 각 그룹의 개체 수를 집계하고 별칭을 지정합니다.
-- 4. `ORDER BY` 절에 `CASE WHEN` 표현식을 적용하여 정렬 가중치를 직접 부여합니다.
--    - 'Cat'인 경우 1을 반환하여 최우선 정렬
--    - 'Dog'인 경우 2를 반환하여 그 다음 순서로 정렬
--    - 이를 통해 알파벳 순서에 의존하지 않고 고양이가 개보다 먼저 출력되도록 명시적 우선순위를 보장합니다.

SELECT 
    ANIMAL_TYPE,
    COUNT(ANIMAL_TYPE) as count
FROM
    ANIMAL_INS
WHERE 
    ANIMAL_TYPE = 'Cat' OR
    ANIMAL_TYPE = 'Dog'
GROUP BY
    ANIMAL_TYPE
ORDER BY 
    CASE
        WHEN ANIMAL_TYPE = 'Cat' THEN 1   
        WHEN ANIMAL_TYPE = 'Dog' THEN 2   
    END;