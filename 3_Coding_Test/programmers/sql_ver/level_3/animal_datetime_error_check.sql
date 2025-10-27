-- 문제: 프로그래머스 Lv.3 '있었는데요 없었습니다'
-- 설명: ANIMAL_INS 테이블과 ANIMAL_OUTS 테이블을 조인하여, 보호 시작일보다 입양일이 
--       더 빠른(잘못 입력된) 동물의 ID와 이름을 조회해야 합니다. 
--       결과는 보호 시작일이 빠른 순서(오름차순)로 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043

-- 풀이:
-- 1. ANIMAL_INS 테이블(I)과 ANIMAL_OUTS 테이블(O)을 ANIMAL_ID를 기준으로 INNER JOIN 합니다.
-- 2. WHERE 절에서 입양일(O.DATETIME)이 보호 시작일(I.DATETIME)보다 과거인(작은) 조건을 필터링합니다.
-- 3. 결과를 보호 시작일(I.DATETIME) 오름차순(ASC)으로 ORDER BY합니다.

SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS AS I
INNER JOIN
    ANIMAL_OUTS AS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE
    O.DATETIME < I.DATETIME
ORDER BY
    I.DATETIME ASC;