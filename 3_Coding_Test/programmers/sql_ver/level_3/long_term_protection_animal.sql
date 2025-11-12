-- 문제: 프로그래머스 lv.3 '오랜 기간 보호한 동물(1)'
-- 설명: 아직 입양을 못 간 동물(ANIMAL_OUTS에 없는 동물) 중, 보호소에 가장 오래 있었던 동물 3마리의
--       이름과 보호 시작일(DATETIME)을 조회해야 한다.
--       결과는 보호 시작일(DATETIME) 순(오래된 순)으로 정렬하고, 상위 3개만 출력한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044

-- 풀이:
-- 1. 보호소에 들어온 기록(I)을 기준으로 입양 기록(O)을 LEFT JOIN 한다.
-- 2. 입양 기록(O)이 없는 경우(O.ANIMAL_ID IS NULL)를 WHERE 절로 필터링하여 '입양 못 간 동물'을 찾는다.
-- 3. 보호 시작일(I.DATETIME) 오름차순(ORDER BY)으로 정렬하여 '오랜 기간 보호된' 순서를 확정한다.
-- 4. LIMIT 3을 사용하여 상위 3개의 레코드만 최종 출력한다.

SELECT
    I.NAME,
    I.DATETIME
FROM
    ANIMAL_INS AS I
LEFT JOIN
    ANIMAL_OUTS AS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE
    O.ANIMAL_ID IS NULL
ORDER BY
    I.DATETIME
LIMIT 3;