-- 문제: 프로그래머스 Lv.3 '조건에 맞는 사용자와 총 거래금액 조회하기'
-- 설명: USED_GOODS_BOARD와 USED_GOODS_USER 테이블을 조인하여, 완료된 거래(STATUS='DONE')의 
--       총금액이 70만 원 이상인 사용자들의 회원 ID, 닉네임, 총 거래금액을 조회해야 합니다. 
--       결과는 총 거래금액을 기준으로 오름차순 정렬합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164668

-- 풀이:
-- 1. USED_GOODS_BOARD(B)와 USED_GOODS_USER(U) 테이블을 WRITER_ID와 USER_ID를 기준으로 JOIN 합니다.
-- 2. WHERE 절에서 거래 상태가 'DONE'인 레코드만 필터링합니다.
-- 3. USER_ID와 NICKNAME을 기준으로 GROUP BY를 수행합니다.
-- 4. 그룹별 거래 가격의 합계(SUM)를 계산하고, HAVING 절에서 이 합계가 700000 이상인 그룹만 필터링합니다.
-- 5. 결과를 총 거래금액(TOTAL_SALES) 오름차순(ASC)으로 ORDER BY합니다.

SELECT
    U.USER_ID AS USER_ID,
    U.NICKNAME AS NICKNAME,
    SUM(B.PRICE) AS TOTAL_SALES
FROM
    USED_GOODS_BOARD AS B
INNER JOIN
    USED_GOODS_USER AS U
    ON B.WRITER_ID = U.USER_ID
WHERE 
    B.STATUS = 'DONE'
GROUP BY
    U.USER_ID, U.NICKNAME
HAVING
    TOTAL_SALES >= 700000
ORDER BY
    TOTAL_SALES ASC;