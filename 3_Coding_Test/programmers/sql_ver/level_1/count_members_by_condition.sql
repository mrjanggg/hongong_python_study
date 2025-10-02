-- 문제: 프로그래머스 Lv.1 '조건에 맞는 회원수 구하기'
-- 설명: 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원의 수를 구하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535

-- 풀이:
-- 1. `SELECT COUNT(*)`를 사용하여 조건을 만족하는 모든 행의 수를 계산합니다.
-- 2. `FROM` 절에서 `USER_INFO` 테이블을 지정합니다.
-- 3. `WHERE` 절에 `AND` 연산자를 사용하여 두 가지 조건을 모두 만족하는 행만 필터링합니다.
-- 4. 첫 번째 조건은 `JOINED LIKE '2021%'`로, 가입 연도가 2021년인 회원을 찾습니다.
-- 5. 두 번째 조건은 `(AGE >= 20 AND AGE <= 29)`로, 나이가 20세 이상 29세 이하인 회원을 찾습니다.

SELECT COUNT(*)
FROM USER_INFO
WHERE JOINED LIKE '2021%' AND ( AGE>=20 AND AGE<=29 )