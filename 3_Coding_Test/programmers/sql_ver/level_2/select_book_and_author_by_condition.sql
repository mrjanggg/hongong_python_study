-- 문제: 프로그래머스 Lv.2 '조건에 맞는 도서와 저자 리스트 출력하기'
-- 설명: 카테고리가 '경제'인 도서들의 도서 ID, 저자명, 출판일(YYYY-MM-DD 형식)을 조회하는 문제입니다. 결과는 출판일을 기준으로 오름차순 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 참고:

-- 풀이:
-- 1. `INNER JOIN`을 사용하여 도서 테이블(BOOK)과 저자 테이블(AUTHOR)을 `AUTHOR_ID`를 기준으로 연결합니다.
-- 2. `SELECT` 절에서 `BOOK_ID`, `AUTHOR_NAME`, 그리고 `DATE_FORMAT()` 함수를 사용하여 'YYYY-MM-DD' 형식으로 변환된 `PUBLISHED_DATE`를 선택합니다.
-- 3. `WHERE` 절에 `BOOK.CATEGORY = '경제'` 조건을 사용하여 카테고리가 '경제'인 도서만 필터링합니다.
-- 4. `ORDER BY PUBLISHED_DATE ASC`를 사용하여 출판일을 기준으로 오름차순 정렬합니다.

SELECT
    BOOK.BOOK_ID AS BOOK_ID,
    AUTHOR.AUTHOR_NAME AS AUTHOR_NAME,
    DATE_FORMAT(BOOK.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM
    BOOK
INNER JOIN
    AUTHOR ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE
    BOOK.CATEGORY = '경제'
ORDER BY
    PUBLISHED_DATE ASC;