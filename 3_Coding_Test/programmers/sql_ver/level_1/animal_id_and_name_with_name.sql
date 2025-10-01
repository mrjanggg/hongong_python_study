-- 문제: 프로그래머스 Lv.1 '이름이 있는 동물의 아이디'
-- 설명: 동물의 이름이 NULL이 아닌, 즉 이름이 있는 동물의 ANIMAL_ID와 NAME을 ANIMAL_ID 순으로 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59407

-- 풀이:
-- 1. `SELECT` 절에 `ANIMAL_ID`와 `NAME` 컬럼을 명시하여 원하는 정보를 선택합니다.
-- 2. `FROM` 절을 사용하여 `ANIMAL_INS` 테이블에서 데이터를 가져옵니다.
-- 3. `WHERE` 절을 사용하여 `NAME` 컬럼의 값이 NULL이 아닌 행, 즉 이름이 있는 동물만 필터링합니다. `IS NOT NULL` 조건을 사용합니다.
-- 4. `ORDER BY` 절을 사용하여 `ANIMAL_ID`를 기준으로 오름차순으로 정렬합니다.

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
ORDER BY ANIMAL_ID