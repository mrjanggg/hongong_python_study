-- 문제: 프로그래머스 Lv.2 '이름에 el이 들어가는 동물 찾기'
-- 설명: 동물 보호소에 들어온 동물 중 ANIMAL_TYPE이 'Dog'이고, 이름(NAME)에 'el'이 들어가는 동물의 ID와 이름을 조회하는 문제입니다. 이름의 대소문자는 구분하지 않으며, 결과는 이름 순으로 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59047

-- 풀이:
-- 1. `SELECT` 절에 `ANIMAL_ID`와 `NAME` 컬럼을 선택합니다.
-- 2. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 3. `WHERE` 절에서 `AND` 연산자를 사용하여 두 가지 조건을 결합합니다.
--    - 동물 종류 조건: `ANIMAL_TYPE = 'Dog'`를 사용하여 개(Dog)만 필터링합니다.
--    - 이름 포함 조건: `lower(NAME) LIKE lower('%el%')`를 사용하여 이름이 'el'을 포함하는지 검사합니다. 이때 `lower()` 함수를 사용해 대소문자를 무시하고 검색을 수행합니다.
-- 4. `ORDER BY NAME ASC`를 사용하여 이름을 기준으로 오름차순 정렬합니다.

SELECT 
    ANIMAL_ID, 
    NAME
FROM 
    ANIMAL_INS
WHERE 
    lower(NAME) LIKE lower('%el%') AND
    ANIMAL_TYPE = 'Dog'
ORDER BY 
    NAME ASC;