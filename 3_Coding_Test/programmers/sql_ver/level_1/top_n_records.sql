-- 문제: 프로그래머스 Lv.2 '상위 n개 레코드'
-- 설명: 동물 보호소에 가장 먼저 들어온 동물의 이름을 한 마리만 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59405

-- 풀이:
-- 1. `ORDER BY` 절을 사용하여 `DATETIME` (들어온 날짜)을 오름차순(ASC)으로 정렬합니다.
-- 2. `LIMIT 1`을 사용하여 정렬된 결과 중 가장 첫 번째 행, 즉 가장 먼저 들어온 동물의 정보를 선택합니다.
-- 3. `SELECT NAME`을 사용하여 동물의 이름만 조회합니다.

SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;