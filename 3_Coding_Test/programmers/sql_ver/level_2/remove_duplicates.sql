-- 문제: 프로그래머스 Lv.2 '중복 제거하기'
-- 설명: 동물 보호소에 들어온 동물의 이름 중에서 중복되는 이름은 제외하고, 이름이 있는 동물의 수를 세는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408

-- 풀이:
-- 1. `COUNT(DISTINCT NAME)`을 사용하여 이름 컬럼의 중복을 제거한(DISTINCT) 후, 그 개수를 계산하고 `AS count`로 컬럼명을 지정합니다.
-- 2. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 3. `WHERE NAME IS NOT NULL` 조건을 사용하여 이름이 기록되지 않은(NULL) 행은 제외합니다.

SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;