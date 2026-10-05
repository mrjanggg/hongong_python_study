-- 문제: 프로그래머스 Lv.2 '최솟값 구하기'
-- 설명: 동물 보호소에 가장 먼저 들어온 시각(DATETIME)을 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038

-- 풀이:
-- 1. `MIN(DATETIME)` 함수를 사용하여 동물 보호소에 가장 먼저 들어온 동물(최솟값)의 시각을 구합니다.
-- 2. 문제의 요구사항에 맞추어 컬럼명을 `AS '시간'`으로 지정하여 조회합니다.

SELECT MIN(DATETIME) AS '시간'
FROM ANIMAL_INS;