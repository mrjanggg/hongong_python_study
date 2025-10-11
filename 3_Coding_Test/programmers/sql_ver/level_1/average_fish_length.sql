-- 문제: 프로그래머스 Lv.1 '잡은 물고기의 평균 길이 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)에서 길이를 측정하지 않은 물고기(NULL)나 길이가 10cm 이하인 물고기는 모두 10cm로 간주하고, 물고기들의 평균 길이를 소수점 셋째 자리에서 반올림하여 둘째 자리까지 출력하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293259

-- 풀이:
-- 1. `CASE` 표현식을 `AVG()` 함수 내부에 사용하여, 각 행의 `LENGTH` 값을 조건에 따라 변환합니다.
--    - `WHEN LENGTH IS NULL THEN 10`: 길이가 NULL이면 10으로 간주합니다.
--    - `WHEN LENGTH <= 10 THEN 10`: 길이가 10cm 이하이면 10으로 간주합니다.
--    - `ELSE LENGTH`: 그 외에는 실제 길이를 사용합니다.
-- 2. `AVG()` 함수로 이 변환된 값들의 평균을 구합니다.
-- 3. `ROUND(..., 2)`를 사용하여 평균값을 소수점 셋째 자리에서 반올림하여 둘째 자리까지 출력하고, `AS AVERAGE_LENGTH`로 컬럼명을 지정합니다.

SELECT ROUND(AVG(
    CASE
        WHEN LENGTH IS NULL THEN 10
        WHEN LENGTH <= 10 THEN 10
        ELSE LENGTH
    END), 2) AS AVERAGE_LENGTH
FROM FISH_INFO