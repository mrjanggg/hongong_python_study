-- 문제: 프로그래머스 Lv.2 '고양이와 개는 몇 마리 있을까'
-- 설명: 동물 보호소에 들어온 동물 중 고양이와 개의 수를 각각 구하고, 고양이를 개보다 먼저 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040

-- 풀이:
-- 1. `GROUP BY ANIMAL_TYPE`을 사용하여 동물 종류별로 행을 그룹화합니다.
-- 2. `SELECT ANIMAL_TYPE, COUNT(*) AS count`를 사용하여 동물 종류와 각 그룹의 개수를 계산하고 별칭을 지정합니다.
-- 3. `ORDER BY` 절에 `CASE` 표현식을 사용하여 정렬 순서를 지정합니다.
--    - 'Cat'일 때는 1 (가장 먼저)
--    - 'Dog'일 때는 2 (그 다음)
--    - 이 방식을 통해 'Cat'이 'Dog'보다 먼저 출력되도록 정렬합니다.

SELECT
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM
    ANIMAL_INS
GROUP BY
    ANIMAL_TYPE
ORDER BY
    CASE ANIMAL_TYPE
        WHEN 'Cat' THEN 1
        WHEN 'Dog' THEN 2
    END;