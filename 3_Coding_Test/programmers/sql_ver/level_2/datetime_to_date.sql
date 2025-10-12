-- 문제: 프로그래머스 Lv.2 'DATETIME에서 DATE로 형 변환'
-- 설명: 동물 보호소에 들어온 동물의 보호 시작일(DATETIME)을 조회하되, 날짜만 남기고 시간 정보는 제외한 'YYYY-MM-DD' 형태로 출력하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414

-- 풀이:
-- 1. `SELECT` 절에서 `ANIMAL_ID`와 `NAME`을 선택합니다.
-- 2. `DATETIME` 컬럼은 `DATE_FORMAT(DATETIME, '%Y-%m-%d')` 함수를 사용하여 'YYYY-MM-DD' 형식으로 변환합니다.
-- 3. `AS 날짜`를 사용하여 변환된 컬럼의 이름을 '날짜'로 지정합니다.
-- 4. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 5. `ORDER BY ANIMAL_ID`를 사용하여 결과를 정렬합니다.

SELECT
    ANIMAL_ID,
    NAME,
    date_format(DATETIME,'%Y-%m-%d') AS 날짜
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID;