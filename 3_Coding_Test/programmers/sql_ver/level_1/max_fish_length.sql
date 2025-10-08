-- 문제: 프로그래머스 Lv.1 '잡은 물고기 중 가장 큰 물고기의 길이 구하기'
-- 설명: 물고기 정보 테이블(FISH_INFO)에서 잡은 물고기 중 가장 큰 물고기의 길이를 구하고, 그 결과에 'cm'을 붙여 'MAX_LENGTH'라는 이름으로 출력하는 SQL문을 작성하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298515

-- 풀이:
-- 1. `MAX(LENGTH)`를 사용하여 `FISH_INFO` 테이블의 `LENGTH` 컬럼에서 최댓값을 구합니다.
-- 2. `CONCAT()` 함수를 사용하여 구한 최댓값 뒤에 'cm' 문자열을 붙여줍니다.
-- 3. `AS MAX_LENGTH`를 사용하여 결과 컬럼의 이름을 'MAX_LENGTH'로 지정합니다.

SELECT concat(max(LENGTH),'cm') AS MAX_LENGTH
FROM FISH_INFO