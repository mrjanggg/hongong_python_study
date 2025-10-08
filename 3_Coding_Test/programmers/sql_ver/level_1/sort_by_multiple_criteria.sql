-- 문제: 프로그래머스 Lv.1 '여러 기준으로 정렬하기'
-- 설명: 보호소에 들어온 동물의 정보를 이름(NAME) 기준 오름차순으로 정렬하고, 이름이 같다면 보호 시작일(DATETIME) 기준 내림차순으로 정렬하여 ID, 이름, 보호 시작일을 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404

-- 풀이:
-- 1. `SELECT` 절에 `ANIMAL_ID`, `NAME`, `DATETIME` 컬럼을 선택합니다.
-- 2. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 3. `ORDER BY` 절에 정렬 기준을 콤마(,)로 구분하여 순서대로 명시합니다.
--    - 첫 번째 기준: `NAME ASC` (이름 오름차순)
--    - 두 번째 기준: `DATETIME DESC` (보호 시작일 내림차순)

SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;