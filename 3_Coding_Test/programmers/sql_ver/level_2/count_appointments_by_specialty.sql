-- 문제: 프로그래머스 Lv.2 '진료과별 총 예약 횟수 출력하기'
-- 설명: 2022년 5월에 예약된 진료과별 총 예약 횟수를 구하고, 예약 횟수가 적은 순, 진료과 코드가 오름차순인 순서로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202

-- 풀이:
-- 1. `WHERE (YEAR(APNT_YMD) = 2022) AND (MONTH(APNT_YMD) = 5)`를 사용하여 2022년 5월에 예약된 건만 필터링합니다.
-- 2. `GROUP BY MCDP_CD`를 사용하여 진료과 코드별로 행들을 그룹화합니다.
-- 3. `SELECT MCDP_CD AS 진료과코드, COUNT(PT_NO) AS 5월예약건수`를 사용하여 진료과 코드와 그룹별 예약 환자 수를 집계하고 지정된 컬럼 별칭을 부여합니다.
-- 4. `ORDER BY 5월예약건수 ASC, 진료과코드 ASC`를 사용하여 예약 건수 오름차순, 동일할 경우 진료과 코드 오름차순으로 정렬합니다.

SELECT MCDP_CD AS 진료과코드,
        COUNT(PT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE (YEAR(APNT_YMD) = 2022) AND (MONTH(APNT_YMD) = 5)
GROUP BY MCDP_CD
ORDER BY 5월예약건수 ASC, 진료과코드 ASC;