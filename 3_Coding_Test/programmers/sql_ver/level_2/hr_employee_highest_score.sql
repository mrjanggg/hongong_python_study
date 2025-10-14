-- 문제: 프로그래머스 Lv.2 '조건에 맞는 사원 정보 조회하기'
-- 설명: HR_EMPLOYEES와 HR_GRADE 테이블을 조인하여, 2022년도 평가 점수 합계가 
--       가장 높은 사원들의 점수, 사번, 성명, 직책, 이메일을 조회해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284527
 
-- 풀이:
-- 1. 사원 테이블과 평가 테이블을 조인합니다.
-- 2. WHERE 절을 사용하여 2022년도 데이터만 필터링합니다.
-- 3. 사원별로 GROUP BY하여 평가 점수의 합계(SUM)를 구합니다.
-- 4. HAVING 절에서 서브쿼리를 이용하여 이 합계 점수가 전체 중 가장 높은 값과 같은지 비교하여 최종 결과를 도출합니다.

SELECT
    SUM(G.SCORE) AS SCORE,
    E.EMP_NO,
    E.EMP_NAME,
    E.POSITION,
    E.EMAIL
FROM
    HR_EMPLOYEES AS E
INNER JOIN
    HR_GRADE AS G ON E.EMP_NO = G.EMP_NO
WHERE
    G.YEAR = 2022
GROUP BY
    E.EMP_NO 
HAVING
    SCORE = (
        SELECT 
            SUM(SCORE)
        FROM 
            HR_GRADE
        WHERE 
            YEAR = 2022
        GROUP BY 
            EMP_NO
        ORDER BY 
            SUM(SCORE) DESC
        LIMIT 1
    );