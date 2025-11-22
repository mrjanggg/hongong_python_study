-- 문제: 프로그래머스 lv.3 '물고기 종류 별 대어 찾기'
-- 설명: FISH_INFO 테이블과 FISH_NAME_INFO 테이블을 결합하여, 물고기 종류별로 잡은
--       가장 큰 물고기(대어)의 ID, 물고기 이름, 길이를 조회해야 한다.
--       결과는 ID를 기준으로 오름차순 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299307 (해당 문제 링크로 추정)

-- 풀이:
-- 1. [서브쿼리] FISH_INFO 테이블에서 각 물고기 종류(FISH_TYPE)별로 가장 큰 길이(MAX(LENGTH))를 찾는다. (GROUP BY)
-- 2. 메인 쿼리에서 (I.FISH_TYPE, I.LENGTH) 쌍이 서브쿼리 결과와 일치하는 레코드만 필터링한다.
-- 3. FISH_INFO(I)와 FISH_NAME_INFO(N)를 FISH_TYPE으로 INNER JOIN하여 물고기 이름(N.FISH_NAME)을 가져온다.
-- 4. 최종적으로 ID, FISH_NAME, LENGTH를 출력하고, ID를 기준으로 오름차순 정렬한다.

SELECT
    I.ID,
    N.FISH_NAME,
    I.LENGTH
FROM
    FISH_INFO AS I
INNER JOIN
    FISH_NAME_INFO AS N 
    ON I.FISH_TYPE = N.FISH_TYPE
WHERE
    (I.FISH_TYPE, I.LENGTH) IN (
        SELECT
            FISH_TYPE,
            MAX(LENGTH)
        FROM
            FISH_INFO
        GROUP BY
            FISH_TYPE
    )
ORDER BY
    ID;