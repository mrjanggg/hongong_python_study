-- 문제: 프로그래머스 Lv.2 '루시와 엘라 찾기'
-- 설명: 동물 보호소에 들어온 동물 중 이름이 'Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty'인 동물의 ID, 이름, 성별 및 중성화 여부(SEX_UPON_INTAKE)를 ANIMAL_ID 순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59046

-- 풀이:
-- 1. `SELECT` 절에 `ANIMAL_ID`, `NAME`, `SEX_UPON_INTAKE` 컬럼을 명시하여 필요한 정보를 선택합니다.
-- 2. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `IN` 연산자를 사용하여 이름이 지정된 목록('Lucy', 'Ella', ...) 중 하나와 일치하는 행만 필터링합니다.
-- 4. `ORDER BY ANIMAL_ID ASC`를 사용하여 동물 ID를 기준으로 오름차순 정렬합니다.

SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM
    ANIMAL_INS
WHERE
    NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY
    ANIMAL_ID ASC;