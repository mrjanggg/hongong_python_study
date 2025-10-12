-- 문제: 프로그래머스 Lv.2 'NULL 처리하기'
-- 설명: 동물의 이름(NAME)이 NULL인 경우 'No name'으로 대체하여 출력하고, ANIMAL_TYPE, SEX_UPON_INTAKE 정보를 ANIMAL_ID 순으로 조회하는 문제입니다. 비밀지도 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 폰켓몬 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 2016년 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 동물의 아이디와 이름 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 이름이 있는 동물의 아이디 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 아픈 동물 찾기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 경기도에 위치한 식품창고 목록 출력하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 조건에 맞는 회원수 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 역순 정렬하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 어린 동물 찾기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 인기있는 아이스크림 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 가장 비싼 상품 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 여러 기준으로 정렬하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 강원도에 위치한 생산공장 목록 출력하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 조건에 맞는 도서 리스트 출력하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 잔챙이 잡은 수 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 잡은 물고기의 평균 길이 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 최댓값 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 자동차 대여 기록에서 장기_단기 대여 구분하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 가장 큰 물고기 10마리 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 조건에 부합하는 중고거래 댓글 조회하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 동물 수 구하기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - Python 개발자 찾기 _ 프로그래머스 스쿨.html, uploaded:코딩테스트 연습 - 최솟값 구하기 _ 프로그래머스 스쿨.html]
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59410

-- 풀이:
-- 1. `SELECT` 절에서 `ANIMAL_TYPE`, `SEX_UPON_INTAKE` 컬럼을 선택합니다.
-- 2. `NAME` 컬럼은 `CASE` 표현식을 사용하여 NULL 여부를 판단합니다.
--    - `WHEN NAME IS NULL THEN 'No name'` : 이름이 NULL이면 'No name'을 출력합니다.
--    - `ELSE NAME` : 이름이 NULL이 아니면 원래 이름을 출력합니다.
-- 3. `AS NAME`을 사용하여 조건 처리 후의 컬럼명을 'NAME'으로 지정합니다.
-- 4. `FROM` 절에서 `ANIMAL_INS` 테이블을 지정합니다.
-- 5. `ORDER BY ANIMAL_ID`를 사용하여 ANIMAL_ID를 기준으로 오름차순 정렬합니다.

SELECT
    ANIMAL_TYPE,
    CASE
        WHEN NAME IS NULL THEN 'No name'
        ELSE NAME
    END AS NAME,
    SEX_UPON_INTAKE
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID;