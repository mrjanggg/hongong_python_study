-- 문제: 프로그래머스 Lv.1 '조건에 맞는 도서 리스트 출력하기'
-- 설명: 카테고리가 '인문'이며, 2021년에 출판된 도서의 ID와 출판일(YYYY-MM-DD 형식)을 출판일을 기준으로 오름차순 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853

-- 풀이:
-- 1. `SELECT` 절에서 `BOOK_ID`를 선택하고, `DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d')`를 사용하여 출판일의 형식을 'YYYY-MM-DD'로 변환합니다.
-- 2. `FROM` 절에서 `BOOK` 테이블을 지정합니다.
-- 3. `WHERE` 절에서 `AND` 연산자를 사용하여 두 가지 조건을 모두 만족하는 행을 필터링합니다.
--    - 카테고리 조건: `CATEGORY = '인문'`
--    - 출판 연도 조건: `YEAR(PUBLISHED_DATE) = 2021` (YEAR 함수를 사용하여 날짜에서 연도만 추출)
-- 4. `ORDER BY PUBLISHED_DATE ASC`를 사용하여 출판일 기준으로 오름차순 정렬합니다.

SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d')
FROM BOOK
WHERE CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = 2021
ORDER BY PUBLISHED_DATE ASC