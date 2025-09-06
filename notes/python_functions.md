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
  real_num = int(num_str) # 123 즉, 정수로 변환 됨.

  num = 456
  str_num = str(num) # '456' 즉, 문자열로 변환 됨.
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

## 4. sum()
- **설명:** 리스트나 튜플처럼 여러 숫자를 담고 있는 데이터의 모든 원소들의 '총합'을 구해주는 함수.
            또한, min()과 max()함수와 쓰일 수 있다.
- **예시 코드:**
  ```python
  # 숫자로 이루어진 리스트
  numbers = [10, 20, 30, 40, 50]

  # 리스트의 모든 원소의 합계를 구함
  total = sum(numbers)

  print(total)  # 결과: 150
  ```
  
  ```python
  return sum(range(min(a, b), max(a, b) + 1, 1))
  ```

---

## 4. sorted()
- **설명:** 리스트나 문자열 등 순서가 있는 데이터를 정렬한 '새로운 리스트'를 만들어주는 함수. 원본 데이터는 그대로 유지됨.
- **예시 코드:**
  ```python
  my_list = [3, 1, 4, 2]
  my_string = "cab"

  # 1. 오름차순으로 정렬 (기본값)
  asc_list = sorted(my_list)
  print(asc_list)  # 결과: [1, 2, 3, 4]

  # 2. 내림차순으로 정렬 (reverse=True 옵션 사용)
  desc_list = sorted(my_list, reverse=True)
  print(desc_list) # 결과: [4, 3, 2, 1]

  # 3. 문자열도 정렬 가능 (결과는 항상 리스트)
  sorted_str_list = sorted(my_string)
  print(sorted_str_list) # 결과: ['a', 'b', 'c']
  ```

---

## 6. join()
- **설명:** 리스트 안에 있는 여러 개의 문자열들을 하나의 문자열로 합쳐주는 메소드. "접착제".join(문자열_리스트) 형태로 사용.
- **예시 코드:**
  ```python
  my_list = ['9', '8', '7']

  # 1. 공백 없이 모두 합치기
  combined_str1 = "".join(my_list)
  print(combined_str1) # 결과: "987"

  # 2. 띄어쓰기(' ')를 접착제로 사용해 합치기
  my_list2 = ['hello', 'world']
  combined_str2 = " ".join(my_list2)
  print(combined_str2) # 결과: "hello world"
  ```

---

## 7. .lower() / .upper()
- **설명:** 문자열의 모든 글자를 소문자(`.lower()`) 또는 대문자(`.upper()`)로 일괄 변경해주는 메소드. 대소문자를 구분하지 않고 비교해야 할 때 필수적.
- **예시 코드:**
  ```python
  my_string = "Hello World"

  # 1. 모든 글자를 소문자로 변경
  lower_str = my_string.lower()
  print(lower_str)  # 결과: "hello world"

  # 2. 모든 글자를 대문자로 변경
  upper_str = my_string.upper()
  print(upper_str) # 결과: "HELLO WORLD"
  ```

---

## 8. .count()
- **설명:** 문자열이나 리스트 안에서 특정 원소가 몇 번 나타나는지 개수를 세어주는 메소드.
- **예시 코드:**
  ```python
  my_string = "apple"
  my_list = [10, 20, 10, 30, 10]

  # 1. 문자열에서 'p'의 개수 세기
  p_count = my_string.count('p')
  print(p_count) # 결과: 2

  # 2. 리스트에서 10의 개수 세기
  ten_count = my_list.count(10)
  print(ten_count) # 결과: 3
  ```

---

