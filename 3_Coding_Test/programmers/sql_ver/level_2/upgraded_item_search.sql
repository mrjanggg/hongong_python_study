-- 문제: 프로그래머스 lv.2 '업그레이드 된 아이템 구하기'
-- 설명: 아이템 트리(ITEM_TREE)에서 희귀도(RARITY)가 'RARE'인 아이템을 부모(PARENT_ITEM_ID)로 하여
--       업그레이드된 모든 아이템의 ID, 이름, 희귀도 정보를 조회해야 한다.
--       결과는 아이템 ID(ITEM_ID)를 기준으로 내림차순(DESC) 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273711

-- 풀이:
-- 1. [서브쿼리] ITEM_INFO에서 RARITY가 'RARE'인 아이템 ID 목록(부모가 될 수 있는 아이템)을 추출한다.
-- 2. [JOIN] ITEM_INFO(I)와 ITEM_TREE(T)를 INNER JOIN한다. 이때, I.ITEM_ID(업그레이드된 아이템)와 T.ITEM_ID(자식 아이템)를 연결한다.
-- 3. [필터링] WHERE T.PARENT_ITEM_ID IN (서브쿼리 결과) 조건을 사용하여, 부모 아이템이 'RARE'인 경우만 필터링한다.
-- 4. 최종적으로 I 테이블(업그레이드된 아이템)의 ID, NAME, RARITY를 출력하고 ITEM_ID 내림차순으로 정렬한다.

SELECT
    I.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY
FROM
    ITEM_INFO AS I
INNER JOIN
    ITEM_TREE AS T 
    ON I.ITEM_ID = T.ITEM_ID
WHERE
    T.PARENT_ITEM_ID IN (
        SELECT 
            ITEM_ID
        FROM
            ITEM_INFO
        WHERE
            RARITY = 'RARE'
    )
ORDER BY
    I.ITEM_ID DESC;