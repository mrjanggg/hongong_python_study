-- 문제: 프로그래머스 Lv.1 '평균 일일 대여 요금 구하기'
-- 설명: 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 소수점 첫째 자리에서 반올림하여 정수 부분만 출력하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136

-- 풀이:
-- 1. `AVG(DAILY_FEE)`를 사용하여 '일일 대여 요금'의 평균을 계산합니다.
-- 2. `ROUND(..., 0)` 함수를 사용하여 계산된 평균값을 소수점 첫째 자리에서 반올림하여 정수 부분만 남깁니다.
-- 3. `AS AVERAGE_FEE`를 사용하여 결과 컬럼의 이름을 'AVERAGE_FEE'로 지정합니다.
-- 4. `WHERE CAR_TYPE = 'SUV'` 조건을 사용하여 'SUV' 차량만 필터링합니다.

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';