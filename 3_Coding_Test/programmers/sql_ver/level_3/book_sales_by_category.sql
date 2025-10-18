-- 문제: 프로그래머스 Lv.3 '카테고리 별 도서 판매량 집계하기'
-- 설명: BOOK 테이블과 BOOK_SALES 테이블을 조인하여, 2022년 1월의 카테고리별 
--       총 판매량을 조회하고, 카테고리명을 기준으로 오름차순 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855

-- 풀이:
-- 1. BOOK 테이블과 BOOK_SALES 테이블을 BOOK_ID를 기준으로 INNER JOIN 합니다.
-- 2. WHERE 절에서 LIKE 연산자를 사용하여 판매일이 '2022년 1월'인 데이터만 필터링합니다.
-- 3. CATEGORY를 기준으로 GROUP BY를 수행합니다.
-- 4. 그룹별 판매량의 합계(SUM)를 TOTAL_SALES로 출력합니다.
-- 5. CATEGORY 오름차순(ASC)으로 ORDER BY합니다.

SELECT
    B.CATEGORY,
    SUM(SALES) AS TOTAL_SALES
FROM
    BOOK AS B
INNER JOIN
    BOOK_SALES AS S ON B.BOOK_ID = S.BOOK_ID
WHERE
    S.SALES_DATE LIKE '2022-01%'  -- 2022년 1월 데이터 필터링
GROUP BY
    B.CATEGORY
ORDER BY
    B.CATEGORY ASC;