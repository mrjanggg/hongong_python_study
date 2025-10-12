-- 문제: 프로그래머스 Lv.2 '중성화 여부 파악하기'
-- 설명: 동물의 보호 시작 시 성별 및 중성화 여부(SEX_UPON_INTAKE)를 확인하여, 중성화가 되어있다면 'O', 아니면 'X'를 출력하는 '중성화' 컬럼을 추가하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409

-- 풀이:
-- 1. `SELECT` 절에서 `ANIMAL_ID`와 `NAME`을 선택합니다.
-- 2. `CASE` 표현식을 사용하여 `SEX_UPON_INTAKE` 컬럼의 값을 확인합니다.
--    - `WHEN SEX_UPON_INTAKE LIKE '%Neutered%'` : 중성화(수컷)된 경우 'O'
--    - `WHEN SEX_UPON_INTAKE LIKE '%Spayed%'` : 중성화(암컷)된 경우 'O'
--    - `ELSE 'X'` : 위의 두 조건에 해당하지 않으면 'X'
-- 3. `AS 중성화`를 사용하여 결과 컬럼명을 '중성화'로 지정합니다.
-- 4. `ORDER BY ANIMAL_ID`를 사용하여 ANIMAL_ID를 기준으로 정렬합니다.

SELECT
    ANIMAL_ID,
    NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%' THEN 'O'
        WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X'
    END AS 중성화
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID;