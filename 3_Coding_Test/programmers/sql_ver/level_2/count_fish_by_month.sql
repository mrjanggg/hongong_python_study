-- 문제: 프로그래머스 Lv.2 '월별 잡은 물고기 수 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)에서 월별 잡은 물고기의 수를 구하고, 월 기준으로 오름차순 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293260

-- 풀이:
-- 1. `GROUP BY MONTH`를 사용하여 측정 일시(TIME)에서 월만 추출해 그룹화합니다.
-- 2. `MONTH(TIME)` 함수를 사용하여 `TIME` 컬럼에서 월(MONTH)을 추출하고, `AS MONTH`로 컬럼명을 지정합니다.
-- 3. `COUNT(*) AS FISH_COUNT`를 사용하여 각 그룹(월)에 속한 물고기의 수를 계산하고 컬럼명을 지정합니다.
-- 4. `ORDER BY MONTH ASC`를 사용하여 월 순으로 오름차순 정렬합니다.

SELECT
    COUNT(*) AS FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM
    FISH_INFO
GROUP BY
    MONTH
ORDER BY
    MONTH ASC;