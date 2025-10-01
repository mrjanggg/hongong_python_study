-- 문제: 프로그래머스 Lv.1 '아픈 동물 찾기'
-- 설명: 동물 보호소에 들어온 동물 중 아픈 동물의 ID와 이름을 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59036

-- 풀이:
-- 1. `SELECT` 절에 `ANIMAL_ID`와 `NAME` 컬럼을 명시하여 원하는 정보를 선택합니다.
-- 2. `FROM` 절을 사용하여 `ANIMAL_INS` 테이블에서 데이터를 가져옵니다.
-- 3. `WHERE` 절에 `INTAKE_CONDITION` 컬럼의 값이 'Sick'인 행만 필터링합니다.
-- 4. `ORDER BY` 절을 사용하여 `ANIMAL_ID`를 기준으로 오름차순으로 정렬합니다.

SELECT ANIMAL_ID,NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID