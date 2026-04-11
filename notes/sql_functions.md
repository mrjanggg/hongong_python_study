# SQL 필수 함수 정리 노트

## 1. ROUND(해당 컬럼명, 숫자)
- **설명:** 소숫점 자리에서 반올림 할 때 사용.
- **예시 코드:**
  ```sql
  ROUND(AVG(DAILY_FEE), 0) -- 첫번째 자리에서 반올림하겠다. 즉, 소숫점없애겠다 라는 의미.
  ```

  ```sql
  ROUND(AVG(
    CASE
        WHEN LENGTH IS NULL THEN 10
        WHEN LENGTH <= 10 THEN 10
        ELSE LENGTH
    END), 2) -- 처럼 ROUND안에 AVG함수 및 CASE 문법을 적용할 수 있음. 즉, 규칙만 지키면 됨.
  ```

---

## 2. 
- **설명:** 
- **예시 코드:**
  ```sql
  
  ```

---