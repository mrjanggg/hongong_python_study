-- 문제: 프로그래머스 Lv.3 '대장균의 크기에 따라 분류하기 1'
-- 설명: ECOLI_DATA 테이블에서 대장균 개체의 크기(SIZE_OF_COLONY)에 따라 
--       'LOW', 'MEDIUM', 'HIGH'로 분류하고, 개체의 ID와 분류된 크기(SIZE)를 조회해야 합니다.
--       - LOW: 100 이하
--       - MEDIUM: 100 초과, 1000 이하
--       - HIGH: 1000 초과
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299307

-- 풀이:
-- 1. CASE 문을 사용하여 SIZE_OF_COLONY 값의 범위에 따라 조건부로 'LOW', 'MEDIUM', 'HIGH' 문자열을 할당합니다.
-- 2. 조건부로 할당된 문자열을 SIZE라는 별칭으로 출력합니다.
-- 3. 별도의 정렬 조건은 없으므로, 기본 순서대로 출력됩니다.

SELECT
    ID,
    CASE
        WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN SIZE_OF_COLONY <= 1000 THEN 'MEDIUM'  
        ELSE 'HIGH'-- 1000 초과는 ELSE문으로 처리됨
    END AS SIZE
FROM
    ECOLI_DATA;