-- 문제: 프로그래머스 Lv.1 '잔챙이 잡은 수 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)에서 LENGTH(길이) 정보가 NULL인, 즉 길이를 측정하지 않은 잔챙이 물고기의 수를 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293258

-- 풀이:
-- 1. `SELECT COUNT(*)`를 사용하여 조건을 만족하는 모든 행의 수를 계산하고, `AS FISH_COUNT`로 컬럼명을 지정합니다.
-- 2. `FROM` 절에서 `FISH_INFO` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `LENGTH IS NULL` 조건을 사용하여 `LENGTH` 컬럼의 값이 NULL인 행만 필터링합니다.

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL