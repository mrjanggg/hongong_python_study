-- 문제: 프로그래머스 Lv.3 '부서별 평균 연봉 조회하기'
-- 설명: HR_DEPARTMENT 테이블과 HR_EMPLOYEES 테이블을 조인하여, 부서별로 
--       부서 ID, 영문 부서명, 평균 연봉(소수점 첫째 자리에서 반올림)을 조회하고, 
--       평균 연봉을 기준으로 내림차순 정렬해야 합니다.
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/284529

-- 풀이:
-- 1. HR_DEPARTMENT(D)와 HR_EMPLOYEES(E) 테이블을 DEPT_ID로 INNER JOIN 합니다.
-- 2. DEPT_ID를 기준으로 GROUP BY를 수행합니다.
-- 3. 연봉(SAL)의 평균(AVG)을 계산하고, ROUND 함수를 사용하여 소수점 0번째 자리에서 반올림하여 AVG_SAL로 출력합니다.
-- 4. AVG_SAL 내림차순(DESC)으로 ORDER BY합니다.

SELECT
    D.DEPT_ID,
    D.DEPT_NAME_EN,
    ROUND(AVG(E.SAL), 0) AS AVG_SAL
FROM
    HR_DEPARTMENT AS D
INNER JOIN
    HR_EMPLOYEES AS E
    ON D.DEPT_ID = E.DEPT_ID
GROUP BY
    D.DEPT_ID
ORDER BY
    AVG_SAL DESC;