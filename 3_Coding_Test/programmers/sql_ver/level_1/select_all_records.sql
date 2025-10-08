-- 문제: 프로그래머스 Lv.1 '모든 레코드 조회하기'
-- 설명: 동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID 순으로 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59034

-- 풀이:
-- 1. `SELECT *`를 사용하여 해당 테이블의 모든 컬럼 정보를 선택합니다.
-- 2. `FROM` 절을 사용하여 `ANIMAL_INS` 테이블을 지정합니다.
-- 3. `ORDER BY ANIMAL_ID ASC`를 사용하여 동물의 ID를 기준으로 오름차순 정렬합니다.

SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC