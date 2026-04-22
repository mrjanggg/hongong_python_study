-- 파일명: list_female_patients_under_12.sql
-- 문제: 프로그래머스 Lv.1 '12세 이하인 여자 환자 목록 출력하기'
-- 설명: PATIENT 테이블에서 12세 이하인 여자 환자의 정보를 조회하며, 전화번호가 없는 경우 'NONE'으로 표시하고 정렬 조건에 맞춰 출력하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201

-- 풀이:
-- 1. `SELECT` 절에서 환자이름, 환자번호, 성별코드, 나이를 선택합니다.
-- 2. `TLNO` 컬럼은 `CASE` 문을 사용하여 값이 `NULL`인 경우 'NONE'으로 치환하고, 그렇지 않으면 기존 번호를 출력합니다.
-- 3. `WHERE` 절에서 나이가 12세 이하(`AGE <= 12`)이고 성별이 여자(`GEND_CD = 'W'`)인 조건을 설정합니다.
-- 4. `ORDER BY` 절을 통해 나이 기준 내림차순(`DESC`), 나이가 같다면 이름 기준 오름차순(`ASC`)으로 정렬합니다.

-- 2026.04.22 수요일 복습 완료. 

SELECT PT_NAME, PT_NO, GEND_CD, AGE,
    CASE
        WHEN TLNO IS NULL THEN 'NONE'
        ELSE TLNO
    END AS TLNO
FROM PATIENT
WHERE (AGE <= 12) AND (GEND_CD = 'W')
ORDER BY AGE DESC, PT_NAME ASC;