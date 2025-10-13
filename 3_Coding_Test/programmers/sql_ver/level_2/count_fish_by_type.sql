-- 문제: 프로그래머스 Lv.2 '물고기 종류 별 잡은 수 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)과 이름 정보 테이블(FISH_NAME_INFO)을 결합하여, 물고기 종류별 잡은 수를 구하고, 잡은 수가 많은 순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026

-- 풀이:
-- 1. `INNER JOIN`을 사용하여 `FISH_INFO` 테이블(F)과 `FISH_NAME_INFO` 테이블(N)을 `FISH_TYPE` 컬럼으로 연결합니다.
-- 2. `GROUP BY N.FISH_NAME`을 사용하여 물고기 이름별로 행을 그룹화합니다.
-- 3. `SELECT COUNT(*) AS FISH_COUNT, N.FISH_NAME`을 사용하여 잡은 수(COUNT)와 물고기 이름(FISH_NAME)을 계산하고 컬럼명을 지정합니다.
-- 4. `ORDER BY FISH_COUNT DESC`를 사용하여 잡은 물고기 수가 많은 순서(내림차순)로 정렬합니다.

SELECT
    COUNT(*) AS FISH_COUNT,
    N.FISH_NAME
FROM
    FISH_INFO AS F
INNER JOIN
    FISH_NAME_INFO AS N ON F.FISH_TYPE = N.FISH_TYPE
GROUP BY
    N.FISH_NAME
ORDER BY
    FISH_COUNT DESC;