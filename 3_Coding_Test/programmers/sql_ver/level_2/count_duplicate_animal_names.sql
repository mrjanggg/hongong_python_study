-- 문제: 프로그래머스 Lv.2 '동명 동물 수 찾기'
-- 설명: 동물 보호소에 들어온 동물 이름 중, 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 문제입니다. 결과는 이름 순으로 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041

-- 풀이:
-- 1. `WHERE NAME IS NOT NULL`을 사용하여 이름이 없는(NULL) 데이터를 그룹화 전에 미리 제외합니다.
-- 2. `GROUP BY NAME`을 사용하여 동일한 이름을 가진 동물끼리 그룹으로 묶습니다.
-- 3. `HAVING COUNT(NAME) >= 2`를 사용하여 그룹화된 결과 중 이름이 2번 이상 쓰인 그룹만 필터링합니다.
-- 4. `SELECT` 절에서 이름과 해당 이름이 쓰인 횟수(`COUNT(NAME) AS COUNT`)를 조회합니다.
-- 5. `ORDER BY NAME`을 사용하여 이름 순(오름차순)으로 결과를 정렬합니다.

SELECT NAME, COUNT(NAME) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(NAME) >= 2
ORDER BY NAME