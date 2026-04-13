# SQL 필수 함수 정리 노트

## 1. ROUND(숫자, 반올림 할 인덱스)
- **설명:** 특정 자리에서 반올림 할 때 사용.
- **예시 코드:**
  ```sql
  ROUND(AVG(DAILY_FEE), 0) 
  -- 첫번째 자리에서 반올림하겠다. 즉, 소숫점 없애겠다 라는 의미.
  ```

  ```sql
  ROUND(AVG(
    CASE
        WHEN LENGTH IS NULL THEN 10
        WHEN LENGTH <= 10 THEN 10
        ELSE LENGTH
    END), 2) 
    -- 처럼 ROUND안에 AVG함수 및 CASE 문법을 적용할 수 있음. 즉, 규칙만 지키면 됨.
    -- 또한 소숫점 두번째 자리에서 반올림하여, 소수 첫째자리만 표기하겠다는 의미.
  ```

  ```sql
  SELECT ROUND(AVG(price), -1) AS 평균가격
  FROM products;
  -- 예: 15678원 -> 15680원
  -- 일의 자리(8)에서 반올림 했음을 보여줌.
  ```

---

## 2. DATE_FORMAT(날짜데이터, '형식문자열')
- **설명:** 날짜를 다양한 표기법으로 나타내게 도와주는 함수
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

