-- 문제: 프로그래머스 Lv.1 '역순 정렬하기'
-- 설명: 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 ANIMAL_ID 역순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59035

-- 풀이:
-- 1. `SELECT` 절에 `NAME`과 `DATETIME` 컬럼을 명시하여 원하는 정보를 선택합니다.
-- 2. `FROM` 절을 사용하여 `ANIMAL_INS` 테이블에서 데이터를 가져옵니다.
-- 3. `ORDER BY` 절에 `ANIMAL_ID`를 명시하고, `DESC` 키워드를 사용하여 내림차순(역순)으로 정렬합니다.

SELECT NAME,DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC