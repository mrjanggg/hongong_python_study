-- 문제: 프로그래머스 Lv.1 '조건에 부합하는 중고거래 댓글 조회하기'
-- 설명: 2022년 10월에 작성된 게시글에 달린 댓글들을 댓글 작성일과 게시글 제목 순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673

-- 풀이:
-- 1. `INNER JOIN`을 사용하여 게시글 테이블(`USED_GOODS_BOARD`)과 댓글 테이블(`USED_GOODS_REPLY`)을 `BOARD_ID`를 기준으로 연결합니다.
-- 2. `SELECT` 절에서 필요한 컬럼(제목, ID, 작성자 등)과 함께, `DATE_FORMAT()`을 사용하여 댓글 작성일의 형식을 'YYYY-MM-DD'로 변환하여 조회합니다.
-- 3. `WHERE` 절에 `LIKE '%2022-10%'` 조건을 사용하여 게시글의 `CREATED_DATE`가 2022년 10월인 행만 필터링합니다.
-- 4. `ORDER BY` 절에 댓글 작성일(`USED_GOODS_REPLY.CREATED_DATE`)은 오름차순(`ASC`)으로, 게시글 제목(`USED_GOODS_BOARD.TITLE`)은 오름차순(`ASC`)으로 정렬합니다.

SELECT
    USED_GOODS_BOARD.TITLE,
    USED_GOODS_BOARD.BOARD_ID,
    USED_GOODS_REPLY.REPLY_ID,
    USED_GOODS_REPLY.WRITER_ID,
    USED_GOODS_REPLY.CONTENTS,
    date_format(USED_GOODS_REPLY.CREATED_DATE,'%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD
    INNER JOIN USED_GOODS_REPLY
    ON USED_GOODS_BOARD.BOARD_ID = USED_GOODS_REPLY.BOARD_ID
WHERE
    USED_GOODS_BOARD.CREATED_DATE LIKE '2022-10%'
ORDER BY USED_GOODS_REPLY.CREATED_DATE ASC, USED_GOODS_BOARD.TITLE ASC;