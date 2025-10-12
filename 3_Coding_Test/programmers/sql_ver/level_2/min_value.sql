-- 문제: 프로그래머스 Lv.2 '최솟값 구하기'
-- 설명: 동물 보호소에 가장 먼저 들어온 시각(DATETIME)을 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038

-- 풀이:
-- 1. `SELECT` 절에서 `DATETIME` 컬럼을 선택하고, `AS 시간`으로 컬럼명을 지정합니다. (문제에서 별도 요구사항이 없다면 이 이름으로 지정)
-- 2. `WHERE` 절에서 `DATETIME`이 서브쿼리의 결과와 일치하는지 필터링합니다.
-- 3. 서브쿼리 내에서 `MIN(DATETIME)`을 사용하여 `ANIMAL_INS` 테이블의 가장 이른 시각(최솟값)을 구합니다.
-- 4. 이 방식을 통해 가장 먼저 들어온 동물의 모든 레코드 정보를 정확히 조회합니다.

SELECT
    DATETIME AS 시간
FROM
    ANIMAL_INS
WHERE
    DATETIME = (
        SELECT
            MIN(DATETIME)
        FROM
            ANIMAL_INS
    );