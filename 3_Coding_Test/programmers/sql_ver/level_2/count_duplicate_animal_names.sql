-- 문제: 프로그래머스 Lv.2 '동명 동물 수 찾기'
-- 설명: 동물 보호소에 들어온 동물 이름 중, 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 문제입니다. 결과는 이름 순으로 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041

-- 풀이:
-- 1. `GROUP BY NAME`을 사용하여 동일한 이름을 가진 행들을 그룹으로 묶습니다.
-- 2. `SELECT NAME, COUNT(NAME) AS COUNT`를 사용하여 그룹의 이름과 그 그룹의 크기(중복 횟수)를 계산하고, 컬럼명을 'COUNT'로 지정합니다.
-- 3. `HAVING COUNT(NAME) >= 2`를 사용하여 그룹 중 개수(COUNT)가 2 이상인 그룹만 필터링합니다. (그룹화된 결과에 조건을 적용할 때는 WHERE 대신 HAVING을 사용해야 합니다.)
-- 4. `ORDER BY NAME ASC`를 사용하여 이름의 오름차순으로 결과를 정렬합니다.

SELECT
    NAME,
    count(name) AS COUNT
FROM
    ANIMAL_INS
GROUP BY
    NAME
HAVING
    count(NAME) >= 2
ORDER BY
    NAME ASC;