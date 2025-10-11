-- 문제: 프로그래머스 Lv.1 '최댓값 구하기'
-- 설명: 동물 보호소에 가장 늦게 들어온 시각(DATETIME)을 조회하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415

-- 풀이:
-- 1. `MAX()` 집계 함수를 사용하여 `DATETIME` 컬럼의 최댓값(가장 늦은 날짜와 시간)을 구합니다.
-- 2. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다. (문제에서 별도의 컬럼명을 요구하지 않으므로 AS는 생략합니다.)

SELECT MAX(DATETIME)
FROM ANIMAL_INS;


/* 아래 코드는 내가 기존에 풀었던 방식. 논리적으로 옳음.

SELECT DATETIME
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1
*/