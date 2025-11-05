-- 파일명: fish_count_max_length_check.sql

-- 문제: 프로그래머스 lv.3 '특정 조건을 만족하는 물고기별 수와 최대 길이 구하기'
-- 설명: FISH_INFO 테이블에서 물고기 종류별로 잡은 수, 최대 길이, 물고기 종류를 조회해야 한다.
--       이때, 길이가 NULL(10cm 이하)인 물고기는 10cm로 취급해야 하며,
--       최종적으로 평균 길이가 33cm 이상인 물고기 종류만 출력해야 한다.
--       결과는 물고기 종류(FISH_TYPE)에 대해 오름차순(ASC)으로 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298519

-- 풀이:
-- 1. 길이(LENGTH)가 NULL인 경우(10cm 이하)를 10으로 처리하기 위해 IFNULL(LENGTH, 10) 함수를 사용한다.
-- 2. FISH_TYPE별로 그룹화(GROUP BY)하여 잡은 수(COUNT(*))와 IFNULL 처리된 최대 길이(MAX)를 구한다.
-- 3. 그룹 함수(AVG)를 사용한 조건(평균 길이 >= 33)은 HAVING 절을 사용하여 필터링한다.
-- 4. 결과를 FISH_TYPE 오름차순(ORDER BY)으로 정렬한다.

SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(IFNULL(LENGTH, 10)) AS MAX_LENGTH,
    FISH_TYPE
FROM
    FISH_INFO
GROUP BY
    FISH_TYPE
HAVING
    AVG(IFNULL(LENGTH, 10)) >= 33
ORDER BY
    FISH_TYPE ASC;