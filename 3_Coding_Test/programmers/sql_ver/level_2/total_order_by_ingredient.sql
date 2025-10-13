-- 문제: 프로그래머스 Lv.2 '성분으로 구분한 아이스크림 총 주문량'
-- 설명: 상반기 아이스크림 주문 정보와 아이스크림 성분 정보를 조합하여, 각 성분 타입별 아이스크림의 총 주문량을 조회하고 총주문량 기준으로 오름차순 정렬하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026

-- 풀이:
-- 1. `INNER JOIN`을 사용하여 `FIRST_HALF` 테이블과 `ICECREAM_INFO` 테이블을 `FLAVOR` 컬럼을 기준으로 연결합니다.
-- 2. `GROUP BY ICECREAM_INFO.INGREDIENT_TYPE`을 사용하여 성분 타입별로 행을 그룹화합니다.
-- 3. `SELECT` 절에서 `INGREDIENT_TYPE`과 `SUM(FIRST_HALF.TOTAL_ORDER) AS TOTAL_ORDER`를 사용하여 각 그룹의 총 주문량을 계산하고 컬럼명을 'TOTAL_ORDER'로 지정합니다.
-- 4. `ORDER BY TOTAL_ORDER`를 사용하여 총 주문량 기준으로 오름차순 정렬합니다.

SELECT
    ICECREAM_INFO.INGREDIENT_TYPE,
    SUM(FIRST_HALF.TOTAL_ORDER) AS TOTAL_ORDER
FROM
    FIRST_HALF
INNER JOIN
    ICECREAM_INFO ON FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
GROUP BY
    ICECREAM_INFO.INGREDIENT_TYPE
ORDER BY
    TOTAL_ORDER;