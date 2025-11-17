-- 문제: 프로그래머스 lv.3 '없어진 기록 찾기'
-- 설명: 보호소에 들어온 기록(ANIMAL_INS)은 없는데, 입양 기록(ANIMAL_OUTS)만 있는 동물의
--       ID와 이름을 조회해야 한다. (즉, 보호소 데이터베이스에 기록 누락된 동물 찾기)
--       결과는 동물의 ID(ANIMAL_ID) 순으로 오름차순 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042

-- 풀이:
-- 1. 입양 기록 테이블(ANIMAL_OUTS, O)을 기준으로 하여 보호소 기록 테이블(ANIMAL_INS, I)을 LEFT JOIN 한다.
--    (OUTS 테이블의 모든 레코드를 유지하고, INS에 매칭되는 기록이 없으면 NULL이 된다.)
-- 2. WHERE 절에서 I.ANIMAL_ID IS NULL 조건을 사용하여, JOIN 결과 중 ANIMAL_OUTS에만 기록이 있고
--    ANIMAL_INS에는 기록이 없어 NULL 값이 된 레코드(즉, 없어진 기록)만 필터링한다.
-- 3. 결과를 ANIMAL_ID 오름차순(ORDER BY)으로 정렬한다.

SELECT
    O.ANIMAL_ID,
    O.NAME
FROM
    ANIMAL_OUTS AS O
LEFT JOIN
    ANIMAL_INS AS I
    ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE
    I.ANIMAL_ID IS NULL
ORDER BY
    O.ANIMAL_ID;