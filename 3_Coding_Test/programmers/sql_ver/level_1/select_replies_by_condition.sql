-- 파일명: select_replies_by_conditional.sql
-- 문제: 프로그래머스 Lv.1 '조건에 부합하는 중고거래 댓글 조회하기'
-- 설명: 2022년 10월에 작성된 게시글에 달린 댓글들을 댓글 작성일과 게시글 제목 순으로 정렬하여 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673

-- 풀이:
-- 1. 테이블 결합 (FROM & JOIN):
--    - 게시글(`USED_GOODS_BOARD`)과 댓글(`USED_GOODS_REPLY`) 테이블을 공통 키인 `BOARD_ID`로 조인합니다.
-- 2. 조건 필터링 (WHERE):
--    - 댓글 작성일이 아닌 '게시글 작성일(B.CREATED_DATE)'을 기준으로 2022년 10월 등록 건만 추출합니다.
-- 3. 출력 데이터 가공 (SELECT):
--    - 요구된 컬럼들을 추출하며, 동명 컬럼(WRITER_ID, CONTENTS)은 댓글 테이블(R) 기준으로 지정합니다.
--    - 댓글 작성일(R.CREATED_DATE)은 `DATE_FORMAT`을 적용해 'YYYY-MM-DD' 형식으로 맞춥니다.
-- 4. 정렬 (ORDER BY):
--    - 1순위로 댓글 작성일(R.CREATED_DATE) 오름차순, 동점일 경우 2순위로 게시글 제목(B.TITLE) 오름차순 정렬합니다.

SELECT B.TITLE AS TITLE,
        B.BOARD_ID AS BOARD_ID,
        R.REPLY_ID AS REPLY_ID,
        R.WRITER_ID AS WRITER_ID,
        R.CONTENTS AS CONTENT,
        DATE_FORMAT(R.CREATED_DATE, "%Y-%m-%d") AS CREATED_DATE
FROM USED_GOODS_BOARD AS B
    JOIN USED_GOODS_REPLY AS R
    ON B.BOARD_ID = R.BOARD_ID
WHERE YEAR(B.CREATED_DATE) = 2022 AND MONTH(B.CREATED_DATE) = 10
ORDER BY R.CREATED_DATE, B.TITLE