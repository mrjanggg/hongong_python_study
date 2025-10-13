-- 문제: 프로그래머스 Lv.2 '입양 시각 구하기(1)'
-- 설명: 동물 보호소에서 입양이 발생한 기록 중 09시부터 19시까지의 각 시간대별 입양 건수를 시간 순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412

-- 풀이:
-- 1. `HOUR(DATETIME)` 함수로 입양 시각에서 '시'만 추출하고, `AS HOUR`로 별칭을 지정합니다.
-- 2. `GROUP BY HOUR`를 사용하여 시간대별로 행을 그룹화합니다.
-- 3. `HAVING HOUR >= 9 AND HOUR < 20` 절을 사용하여, 그룹화된 결과 중에서 09시 이상, 20시 미만(즉, 19시까지)인 시간대만 필터링합니다. (그룹화 후 필터링에는 HAVING을 사용)
-- 4. `COUNT(*)`로 각 시간대 그룹의 입양 건수를 계산하고, `ORDER BY HOUR`로 시간 순으로 정렬합니다.

SELECT
    HOUR(DATETIME) AS HOUR,
    COUNT(*) AS COUNT
FROM
    ANIMAL_OUTS
GROUP BY
    HOUR
HAVING
    HOUR >= 9 AND HOUR < 20
ORDER BY
    HOUR;