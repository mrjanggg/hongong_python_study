-- 문제: 프로그래머스 lv.3 '업그레이드 할 수 없는 아이템 구하기'
-- 설명: ITEM_INFO와 ITEM_TREE 테이블을 활용하여, 더 이상 다른 아이템의 PARENT_ITEM_ID가 되지 않는
--       아이템(즉, 최종 단계 아이템)의 ID, 이름, 희귀도(RARITY)를 조회해야 한다.
--       결과는 아이템 ID(ITEM_ID)를 기준으로 내림차순 정렬한다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/273712

-- 풀이:
-- 1. 아이템 정보(I)를 기준으로 아이템 트리(T)를 LEFT JOIN 한다. (I의 모든 아이템 보존)
-- 2. I.ITEM_ID를 T.PARENT_ITEM_ID와 연결한다. (어떤 아이템이 부모가 되는지 확인)
-- 3. WHERE T.PARENT_ITEM_ID IS NULL 조건을 사용하여, T 테이블에서 매칭되는 자식 아이템이 없는 아이템,
--    즉 '부모 아이템이 될 수 없는' 아이템(업그레이드 트리의 최종 아이템)만 필터링한다.
-- 4. 결과를 ITEM_ID 내림차순(ORDER BY DESC)으로 정렬한다.

SELECT
    I.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY
FROM
    ITEM_INFO AS I
LEFT JOIN
    ITEM_TREE AS T
    ON I.ITEM_ID = T.PARENT_ITEM_ID
WHERE
    T.PARENT_ITEM_ID IS NULL
ORDER BY
    I.ITEM_ID DESC;