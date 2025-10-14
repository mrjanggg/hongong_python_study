-- 문제: 프로그래머스 Lv.2 '특정 물고기를 잡은 총 수 구하기'
-- 설명: FISH_INFO 테이블과 FISH_NAME_INFO 테이블을 조인하여, 
--       물고기 이름이 'BASS' 또는 'SNAPPER'인 물고기의 총 수를 조회해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298518

-- 풀이:
-- 1. 잡은 물고기 정보 테이블과 물고기 이름 정보를 담은 테이블을 JOIN합니다.
-- 2. WHERE 절에서 물고기 이름이 특정 값('BASS', 'SNAPPER')에 해당하는지 IN 연산자를 이용해 필터링합니다.
-- 3. 필터링된 모든 레코드의 총 개수를 COUNT 함수를 사용하여 계산하고, FISH_COUNT라는 별칭으로 출력합니다.

SELECT
    COUNT(*) AS FISH_COUNT
FROM
    FISH_INFO AS I
INNER JOIN
    FISH_NAME_INFO AS N ON I.FISH_TYPE = N.FISH_TYPE
WHERE
    N.FISH_NAME IN ('BASS', 'SNAPPER');