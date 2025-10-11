-- 문제: 프로그래머스 Lv.1 '가장 큰 물고기 10마리 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)에서 가장 큰 물고기 10마리의 ID와 길이를 길이 기준 내림차순, ID 기준 오름차순으로 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298517

-- 풀이:
-- 1. `SELECT ID, LENGTH`를 사용하여 원하는 컬럼을 선택합니다.
-- 2. `ORDER BY` 절에 두 가지 정렬 기준을 명시합니다.
--    - 첫 번째 기준: `LENGTH DESC` (길이가 긴 순서대로 내림차순 정렬)
--    - 두 번째 기준: `ID ASC` (길이가 같을 경우 ID를 기준으로 오름차순 정렬)
-- 3. `LIMIT 10`을 사용하여 정렬된 결과 중 상위 10개의 레코드만 선택합니다.

SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC , ID ASC
LIMIT 10