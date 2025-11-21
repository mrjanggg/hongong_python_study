-- 문제: 프로그래머스 lv.3 '헤비 유저가 소유한 장소'
-- 설명: PLACES 테이블에서 장소(공간)를 2개 이상 등록한 사람(헤비 유저)이 소유한
--       모든 장소의 ID, 이름, HOST_ID를 조회해야 한다.
--       결과는 장소 ID(ID)를 기준으로 오름차순 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/77487

-- 풀이:
-- 1. [서브쿼리] PLACES 테이블을 HOST_ID로 묶어(GROUP BY) 장소의 개수를 센다.
-- 2. HAVING COUNT(HOST_ID) >= 2 조건을 사용하여 '헤비 유저'(장소를 2개 이상 등록한 유저)의 HOST_ID 목록을 추출한다.
-- 3. [메인 쿼리] PLACES 테이블 전체에서, WHERE HOST_ID IN (서브쿼리 결과) 조건을 사용하여
--    헤비 유저가 소유한 모든 장소의 레코드를 필터링한다.
-- 4. 결과를 ID 오름차순(ORDER BY)으로 정렬한다.

SELECT
    ID, 
    NAME, 
    HOST_ID
FROM
    PLACES
WHERE
    (HOST_ID) IN (
        SELECT
            HOST_ID
        FROM
            PLACES
        GROUP BY
            HOST_ID
        HAVING
            COUNT(HOST_ID) >= 2
    )
ORDER BY
    ID;