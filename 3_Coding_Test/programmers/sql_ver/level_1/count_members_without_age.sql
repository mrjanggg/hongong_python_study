-- 문제: 프로그래머스 Lv.1 '나이 정보가 없는 회원 수 구하기'
-- 설명: USER_INFO 테이블에서 AGE(나이) 정보가 NULL인 회원의 수를 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528

-- 풀이:
-- 1. COUNT() 함수를 사용하여 조건을 만족하는 행의 개수를 셉니다.
-- 2. FROM 절을 사용하여 USER_INFO 테이블에서 데이터를 가져옵니다.
-- 3. WHERE 절과 'IS NULL' 조건을 사용하여 AGE 컬럼의 값이 NULL인 행만 필터링합니다.
-- 4. AS USERS를 사용하여 결과 컬럼의 이름을 'USERS'로 지정합니다.

SELECT count(USER_ID) AS USERS
    FROM USER_INFO
    WHERE AGE IS NULL