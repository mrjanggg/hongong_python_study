-- 문제: 프로그래머스 Lv.1 '한 해에 잡은 물고기 수 구하기'
-- 설명: 2021년에 잡은 물고기의 총 개수를 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298516

-- 풀이:
-- 1. `SELECT COUNT(*)`를 사용하여 조건을 만족하는 모든 행의 수를 계산하고, `AS FISH_COUNT`로 컬럼명을 지정합니다.
-- 2. `FROM` 절에서 `FISH_INFO` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `YEAR(TIME) = 2021` 조건을 사용하여 `TIME` 컬럼(날짜/시간)에서 **YEAR() 함수**를 이용해 연도만 추출하고, 그 값이 2021과 일치하는 행만 필터링합니다. 이 방법은 문자열 LIKE 검색보다 더 명확하고 효율적입니다.

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE YEAR(TIME) = 2021;