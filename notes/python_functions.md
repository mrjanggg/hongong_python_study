# 파이썬 필수 함수 정리 노트

## 1. len()
- **설명:** 데이터의 길이(원소의 개수)를 알려주는 함수. 문자열, 리스트 등에 사용.
- **예시 코드:**
  ```python
  my_list = [1, 2, 3]
  print(len(my_list))  # 결과: 3
  ```

---

## 2. int() / str()
- **설명:** 문자열과 숫자를 서로 변환해주는 짝꿍 함수. 코딩 테스트 필수!
- **예시 코드:**
```python
num_str = "123"
real_num = int(num_str)

num = 456
str_num = str(num) 
```

---

## 3. range()
- **설명:** for 문에서 쓰이며, list에서는 필요없으나 반복횟수 그 자체를 표현할 때는 range가 필수
- **예시 코드:**
```python
my_list = ['A', 'B', 'C']

# 1. 리스트 원소를 바로 사용할 때
for element in my_list:
    print(element)  # A, B, C 출력

# 2. 인덱스 번호(0, 1, 2)가 필요할 때
for i in range(len(my_list)):
    print(i)        # 0, 1, 2 출력
```

---

