-- 문제: 프로그래머스 Lv.2 '동물 수 구하기'
-- 설명: 동물 보호소에 들어온 동물의 총 마리 수를 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programMERS.co.kr/learn/courses/30/lessons/59406

-- 풀이:
-- 1. `COUNT(*)` 함수를 사용하여 테이블의 모든 행의 개수를 계산합니다.
-- 2. `AS count`를 사용하여 결과 컬럼의 이름을 'count'로 지정합니다.
-- 3. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.

SELECT count(ANIMAL_ID) AS count
FROM ANIMAL_INS