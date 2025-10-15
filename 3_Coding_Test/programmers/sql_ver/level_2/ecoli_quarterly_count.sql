-- 문제: 프로그래머스 Lv.2 '분기별 분화된 대장균의 개체 수 구하기'
-- 설명: ECOLI_DATA 테이블에서 분화된 날짜(DIFFERENTIATION_DATE)를 기준으로 
--       분기별 대장균 개체의 총 수(ECOLI_COUNT)를 조회해야 합니다. 
--       분기는 'Q'를 붙여서 출력하며, 분기 순으로 오름차순 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299308

-- 풀이:
-- 1. 날짜를 분기로 변환하기 위해 QUARTER 함수를 사용하고, CONCAT 함수를 이용해 결과에 'Q'를 붙여 출력합니다.
-- 2. 분기(QUARTER)를 기준으로 GROUP BY를 수행합니다.
-- 3. 그룹별 개체 수를 COUNT 함수로 계산하여 ECOLI_COUNT로 출력합니다.
-- 4. 분기 오름차순(ASC)으로 ORDER BY합니다.

SELECT
    CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q') AS QUARTER,
    COUNT(*) AS ECOLI_COUNT
FROM
    ECOLI_DATA
GROUP BY
    QUARTER
ORDER BY
    QUARTER ASC;