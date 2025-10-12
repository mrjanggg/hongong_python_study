-- 문제: 프로그래머스 Lv.2 '진료과별 총 예약 횟수 출력하기'
-- 설명: 2022년 5월에 예약된 진료과별 총 예약 횟수를 구하고, 예약 횟수가 적은 순, 진료과 코드가 오름차순인 순서로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202

-- 풀이:
-- 1. `WHERE APNT_YMD LIKE '2022-05%'`를 사용하여 2022년 5월 예약 건만 필터링합니다.
-- 2. `GROUP BY MCDP_CD`를 사용하여 진료과 코드별로 행을 그룹화합니다.
-- 3. `SELECT MCDP_CD AS 진료과코드, COUNT(*) AS 5월예약건수`를 사용하여 진료과 코드와 각 그룹의 예약 건수를 계산하고 별칭을 지정합니다.
-- 4. `ORDER BY` 절을 사용하여 예약 건수 오름차순(`ASC`), 진료과 코드 오름차순(`ASC`) 순서로 정렬합니다.

SELECT
    MCDP_CD AS 진료과코드,
    COUNT(*) AS 5월예약건수
FROM
    APPOINTMENT
WHERE
    APNT_YMD LIKE '2022-05%'
GROUP BY
    진료과코드
ORDER BY
    5월예약건수 ASC, 진료과코드 ASC;