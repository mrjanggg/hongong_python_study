-- 문제: 프로그래머스 Lv.1 'Python 개발자 찾기'
-- 설명: DEVELOPER_INFOS 테이블에서 Python 스킬을 가진 개발자의 ID, 이메일, 이름 등을 ID 순으로 조회하는 문제입니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276013

-- 풀이:
-- 1. `SELECT` 절에서 개발자의 ID, EMAIL, FIRST_NAME, LAST_NAME 컬럼을 선택합니다.
-- 2. `FROM` 절에서 `DEVELOPER_INFOS` 테이블을 지정합니다.
-- 3. `WHERE` 절에서 `IN` 연산자를 사용하여, 리스트의 컬럼(SKILL_1, SKILL_2, SKILL_3) 값 중 하나라도 `'Python'`과 정확히 일치하는 행을 필터링합니다. (참고: 이전 LIKE 방식보다 코드가 간결하지만, 컬럼에 'Advanced Python'과 같이 추가 문자가 있으면 찾지 못할 수 있습니다.)
-- 4. `ORDER BY ID ASC`를 사용하여 ID를 기준으로 오름차순 정렬합니다.

SELECT ID,EMAIL,FIRST_NAME,LAST_NAME
FROM DEVELOPER_INFOS
WHERE 'Python' IN (SKILL_1, SKILL_2, SKILL_3)
ORDER BY ID ASC