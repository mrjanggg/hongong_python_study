-- 파일명: find_animals_without_name.sql
-- 문제: 프로그래머스 Lv.1 '이름이 없는 동물의 아이디'
-- 설명: 동물 보호소에 들어온 동물 중 이름이 등록되지 않은(NULL인) 동물의 ID를 오름차순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59039

-- 풀이:
-- 1. `SELECT` 절을 사용하여 조회하고자 하는 `ANIMAL_ID` 컬럼을 선택합니다.
-- 2. `FROM` 절에서 대상 테이블인 `ANIMAL_INS`를 지정합니다.
-- 3. `WHERE` 절에서 `NAME` 컬럼의 값이 `NULL`인 데이터만 필터링하기 위해 `IS NULL` 연산자를 사용합니다.
-- 4. 기본적으로 요구되는 정렬 기준에 맞춰 `ANIMAL_ID`를 기준으로 조회합니다.

-- 2026.04.22 수요일 복습 완료. 

SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;