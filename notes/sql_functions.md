# SQL 필수 함수 정리 노트

## 1. YEAR(), MONTH(), DAY(), HOUR(), MINUTE(), SECOND()
- **설명:** 해당 데이터에서 연도,월,일,시간,분,초를 각각 출력하는 함수
- **예시 코드:**
  ```sql
  --함수,추출 대상,예시 결과 ('2026-04-15 13:30:05' 기준)
  --YEAR(),연도,2026
  --MONTH(),월,4
  --DAY() (또는 DAYOFMONTH),일,15
  --HOUR(),시간,13
  --MINUTE(),분,30
  --SECOND(),초,5

  -- 예시 1
  SELECT NAME, JOIN_DATE
  FROM MEMBERS
  WHERE YEAR(JOIN_DATE) = 2026;

  -- 예시 2
  SELECT NAME, BIRTHDAY
  FROM USERS
  WHERE MONTH(BIRTHDAY) = 4;

  -- 예시 3
  SELECT HOUR(VISIT_TIME) AS 시간대, COUNT(*) AS 방문수
  FROM ACCESS_LOG
  GROUP BY 시간대
  ORDER BY 시간대;

  ```

---

## 2. DATE_FORMAT(날짜데이터, '형식문자열')과 DATE()함수
- **설명:** DATE_FORMAT()은 날짜를 다양한 표기법으로 나타내게 도와주며 DATE()는 날짜만 표기해줌(아래 예시코드 참고)
- **예시 코드:**
  ```sql
  --구분,기호,의미,결과 예시
  --연도,%Y / %y,4자리 연도 / 2자리 연도,2026 / 26
  --월,%m / %M,숫자 월(01~12) / 영문 월(April),04 / April
  --일,%d / %e,"일(01~31) / 일(1~31, 0 제외)",12 / 12
  --시간,%H / %h,24시간 형식 / 12시간 형식,23 / 11
  --분/초,%i / %s,분(00~59) / 초(00~59),30 / 09
  --요일,%W / %a,요일 이름 / 요일 약어,Sunday / Sun

  SELECT DATE_FORMAT(NOW(), '%Y년 %m월 %d일') AS 오늘날짜;
  -- 결과: 2026년 04월 12일

  SELECT DATE_FORMAT('2026-04-12 23:30:00', '%r (%W)') AS 시간;
  -- 결과: 11:30:00 PM (Sunday)


  -- DATE()함수 예제.
  SELECT DATE('2026-04-15 23:30:05');
  -- 결과: 2026-04-15
  
  -- 결론 : DATE_FORMAT()함수는 내가 어떻게 커스티마이징을 할 지, DATE()는 단순히 '연도-월-일' 형식을 필요로할 때 사용한다.
  ```

---

## 3. DATEDIFF(날짜1, 날짜2)
- **설명:** 날짜1과 날짜2의 차이값을 일(Day)수로 계산하여 정수형태로 반환하는 함수. 
- **예시 코드:**
  ```sql
  SELECT DATEDIFF('2026-04-20', '2026-04-12'); 
  -- 결과: 8 (8일 남음)

  SELECT DATEDIFF('2026-04-01', '2026-04-12'); 
  -- 결과: -11 (11일 지남)
  ```

---

## 4. UPPER('문자열')와 LOWER('문자열')
- **설명:** 매개변수 '문자열'을 대문자(UPPER)나, 소문자(LOWER)로 바꿔주는 함수. 
- **예시 코드:**
  ```sql
  SELECT UPPER(EMAIL) AS 이메일목록
  FROM users;
  -- 결과: ABC@GMAIL.COM, DEF@GMAIL.COM (모두 대문자로 전환됨)

  SELECT LOWER(EMAIL) AS 이메일목록
  FROM users;
  -- 결과: abc@gmail.com, def@gmail.com (모두 소문자로 전환됨)
  ```

---

## 5. CASE문 :(CASE WHEN THEN END)
- **설명:** CASE문으로 각각의 조건에 대한 결과를 만들 수 있음.(아래 예시 코드 참고)
- **예시 코드:**
  ```sql
  --CASE 
  --  WHEN 조건1 THEN 결과1
  --  WHEN 조건2 THEN 결과2
  --  ELSE 모든 조건에 해당 안 될 때의 결과
  --END

  SELECT NAME,
      CASE 
          WHEN INTAKE_CONDITION = 'Aged' THEN '노령'
          WHEN INTAKE_CONDITION = 'Sick' THEN '아픔'
          ELSE '정상'
      END AS 상태구분-- (새로운 컬럼이름)
  FROM ANIMAL_INS;
  ```

---

## 6. IS NULL / '='의 차이.
- **설명:** 어떠한 컬럼이 NULL(값이 없는지) 확인할 때는 'IS NULL'을 사용하며, 값이 일치하는지는 '='을 사용한다.(아래 예시 참고)
            IS 뒤에는 NULL만 올 수 있다.(NOT NULL도 가능)
- **예시 코드:**
  ```sql
  SELECT * FROM FOOD_WAREHOUSE WHERE FREEZER_YN = NULL;
  -- 아무것도 조회되지 않습니다. (문법 오류는 아니지만 결과가 안 나옴)

  SELECT * FROM FOOD_WAREHOUSE WHERE FREEZER_YN IS NULL;
  -- 원하는 대로 NULL인 행을 정확히 찾아줍니다.

  SELECT NAME, SPECIES
  FROM ANIMAL_INS
  WHERE SPECIES = 'DOG';
  -- 결과: 종이 'DOG'인 모든 동물의 이름과 종을 보여줍니다.

  -- WHERE SPECIES IS 'DOG';
  -- 결과: [SQL Error] 'IS' 뒤에는 NULL만 올 수 있다는 에러가 발생합니다.
  ```

---

## 7. IN 연산자
- **설명:** IN (컬럼1,컬럼2 ...)에 일치하는 값이 있는지를 알려준다.
- **예시 코드:**
  ```sql
  SELECT 컬럼명
  FROM 테이블명
  WHERE '컬럼명' 혹은 '값' IN (값1, 값2, 값3, ...);
  --해당 컬럼명 혹은 값이 IN 연산자안에 있으면 True가 됨.
  ```

---

## 8. MAX(), MIN(), AVG(), SUM(), COUNT() 함수
- **설명:** 최댓값, 최솟값, 평균값, 총 합, 해당 컬럼(혹은 값)의 갯수를 구하는 함수
- **예시 코드:**
  ```sql
  SELECT MAX(PRICE) AS 최고가 FROM PRODUCTS;
  SELECT MIN(PRICE) AS 최저가 FROM PRODUCTS;
  SELECT AVG(PRICE) FROM PRODUCTS;    
  SELECT SUM(PRICE) FROM PRODUCTS;
  SELECT COUNT(PRICE) FROM PRODUCTS WHERE PRICE >= 10000;   -- 1만 이상의 값을 가지는 컬럼의 갯수를 구한다.
  ```

---

## 9. ROUND(숫자, 반올림 할 인덱스)
- **설명:** 특정 자리에서 반올림 할 때 사용.
- **예시 코드:**
  ```sql
  -- 예시 1
  ROUND(AVG(DAILY_FEE), 0) 
  -- 첫번째 자리에서 반올림하겠다. 즉, 소숫점 없애겠다 라는 의미.

  -- 예시 2
  ROUND(AVG(
  CASE
      WHEN LENGTH IS NULL THEN 10
      WHEN LENGTH <= 10 THEN 10
      ELSE LENGTH
  END), 2) 
  -- 처럼 ROUND안에 AVG함수 및 CASE 문법을 적용할 수 있음. 즉, 규칙만 지키면 됨.
  -- 또한 소숫점 두번째 자리에서 반올림하여, 소수 첫째자리만 표기하겠다는 의미.

  -- 예시 3
  SELECT ROUND(AVG(price), -1) AS 평균가격
  FROM products;
  -- 예: 15678원 -> 15680원
  -- 일의 자리(8)에서 반올림 했음을 보여줌.

  ```

---

## 10. CONCAT(문자열1, 문자열2, 문자열3, ... )
- **설명:** 문자열을 이어준다. (아래 예시코드 참고)
- **예시 코드:**
  ```sql
  -- 예시 1
  SELECT CONCAT(PRICE, '원') AS 가격표기
  FROM PRODUCTS;
  -- 결과 예: "5000원", "12000원"

  -- 예시 2
  SELECT CONCAT('[', CITY, '] ', ADDRESS) AS 전체주소
  FROM FOOD_WAREHOUSE;
  -- 결과 예: "[서울특별시] 강남구 ...", "[강원도] 강릉시..." 


  -- 잠깐! CONCAT_WS()함수란?
  -- 맨 처음에 구분자를 넣으면 알아서 사이사이에 넣어줍니다.
  -- 예시 3
  SELECT CONCAT_WS('-', '010', '1234', '5678');
  -- 결과: 010-1234-5678
  ```

---

## 11. LIKE 연산자와 '_'연산자
- **설명:** 비슷한 문자열을 찾는 패턴 검색 도구(아래 예시코드 참고)
- **예시 코드:**
  ```sql
  -- 예시 1
  SELECT * FROM MEMBERS WHERE NAME LIKE '김%';
  -- 결과: 김진성, 김철수, 김등등

  -- 예시 2
  SELECT * FROM FOOD_WAREHOUSE WHERE WAREHOUSE_NAME LIKE '%경기%';
  -- 결과: 경기백암창고, 남경기물류센터, 경기도희망창고

  -- NOT LIKE는 LIKE에 해당하지 않는 것들만 조회.
  -- 아래 코드는 'Aged'가 포함되지 않은 상태만 조회
  -- 예시 3
  SELECT * FROM ANIMAL_INS WHERE INTAKE_CONDITION NOT LIKE '%Aged%';


  -- 아래는 원하는 글자를 찾을 때 유용한 연산자 '_'
  -- 예시 4
  SELECT * FROM MEMBERS WHERE NAME LIKE '김_';
  -- 결과: 김진, 김현 (김진성은 3글자라 안 나옴)

  -- 예시 5
  SELECT * FROM MEMBERS WHERE NAME LIKE '김__';
  -- 결과: 김진성, 김현민 (김진은 2글자라 안 나옴)  
  ```

---
