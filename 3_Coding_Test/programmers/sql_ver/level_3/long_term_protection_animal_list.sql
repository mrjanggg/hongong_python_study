-- 문제: 프로그래머스 Lv.3 '오랜 기간 보호한 동물(2)'
-- 설명: ANIMAL_INS 테이블과 ANIMAL_OUTS 테이블을 조인하여, 입양 간 동물 중 
--       보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회해야 합니다. 
--       결과는 보호 기간이 긴 순서(내림차순)로 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411

-- 풀이:
-- 1. ANIMAL_INS 테이블(I)과 ANIMAL_OUTS 테이블(O)을 ANIMAL_ID로 INNER JOIN 합니다. (입양 간 동물만 대상)
-- 2. ORDER BY 절에서 입양일(O.DATETIME)에서 보호 시작일(I.DATETIME)을 빼서 보호 기간을 계산하고, 이를 내림차순(DESC)으로 정렬합니다.
--    - MySQL에서 DATETIME을 빼면 DATEDIFF와 달리 DATE의 차이(일) 외에 시간 차이까지 포함한 시간 간격을 반환하므로, 긴 보호 기간 순으로 정확히 정렬됩니다.
-- 3. LIMIT 2를 사용하여 보호 기간이 가장 긴 상위 2개의 결과만 출력합니다.

SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS AS I
INNER JOIN
    ANIMAL_OUTS AS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY
    O.DATETIME - I.DATETIME DESC
LIMIT 2;