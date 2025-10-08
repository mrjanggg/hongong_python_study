-- 문제: 프로그래머스 Lv.1 '흉부외과 또는 일반외과 의사 목록 출력하기'
-- 설명: 흉부외과(CS)나 일반외과(GS)에 속한 의사의 정보를 조회하는 문제입니다. 고용일자는 내림차순, 이름은 오름차순으로 정렬하며, 고용일자의 시간 부분을 제외하고 날짜만 출력해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132203

-- 풀이:
-- 1. `SELECT` 절에서 `DR_NAME`, `DR_ID`, `MCDP_CD` 컬럼을 선택합니다. `HIRE_YMD` 컬럼은 `DATE_FORMAT()` 함수를 사용하여 'YYYY-MM-DD' 형식으로 변환합니다.
-- 2. `FROM` 절에서 `DOCTOR` 테이블을 지정합니다.
-- 3. `WHERE` 절에서 `OR` 연산자를 사용하여 `MCDP_CD`가 'CS' 또는 'GS'인 행을 필터링합니다.
-- 4. `ORDER BY` 절을 사용하여 `HIRE_YMD`는 내림차순(`DESC`)으로, `DR_NAME`은 오름차순(`ASC`)으로 정렬합니다.

SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;