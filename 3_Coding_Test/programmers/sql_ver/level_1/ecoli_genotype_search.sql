-- 문제: 프로그래머스 lv.1 '특정 형질을 가지는 대장균 찾기'
-- 설명: ECOLI_DATA 테이블에서 GENOTYPE의 2번 형질은 가지지 않으면서,
--       1번 형질 또는 4번 형질을 가지는 대장균의 개수(COUNT)를 조회해야 한다.
--       (유전 형질은 비트 마스크로 표현되며, 1=001, 2=010, 4=100을 의미한다.)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301646

-- 풀이:
-- 1. 조건: '2번 형질은 가지지 않으면서' -> 2 & GENOTYPE 결과가 0이어야 함. (NOT (2 & GENOTYPE))
-- 2. 조건: '1번 형질 또는 4번 형질을 가지는' -> (1 & GENOTYPE) 결과가 1이거나 (4 & GENOTYPE) 결과가 4여야 함. ((1 & GENOTYPE) OR (4 & GENOTYPE))
-- 3. 두 조건을 AND로 결합하여 최종적으로 조건을 만족하는 레코드의 개수(COUNT(*))를 센다.
-- 4. 결과 컬럼명을 COUNT로 지정한다.

SELECT
    COUNT(*) AS COUNT
FROM
    ECOLI_DATA
WHERE
    (NOT(2 & GENOTYPE)) 
    AND 
    ((1 & GENOTYPE) OR (4 & GENOTYPE));