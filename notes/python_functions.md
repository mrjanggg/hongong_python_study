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
  return sum(range(min(a, b), max(a, b) + 1, 1))
  
  #만약 특정한 수의 등차수열의 결과값을 알고 싶을 때
  return sum(range(2, 78 + 1)) # 결과: 3080 
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

## 9. .index()
- **설명:** 리스트 안에서 내가 찾고 싶은 값(value)이 몇 번째 칸에 있는지 그 '인덱스 번호'를 알려주는 메소드.
- **예시 코드:**
  ```python
  my_list = ['사과', '바나나', '딸기', '바나나']

  # 1. '딸기'의 위치(인덱스) 찾기
  # '딸기'는 2번 인덱스에 있으므로 2를 반환
  index_strawberry = my_list.index('딸기')
  print(index_strawberry)  # 결과: 2

  # 2. 중복된 값이 있을 경우
  # '바나나'는 1번, 3번 인덱스에 있지만,
  # .index()는 가장 먼저 찾은 첫 번째 값의 인덱스만 알려줌
  index_banana = my_list.index('바나나')
  print(index_banana) # 결과: 1
  ```

---

## 10. f-string 과 .format() (문자열 포매팅)
- **설명:** 변수에 담긴 값을 문자열 안에 자연스럽게 넣고 싶을 때 사용하는 방법들입니다. f-string이 더 최신이고 간결해서 사용이 권장됩니다.
- **예시 코드:**
  ```python
  name = "진성"
  place = "서울"

  # 1. f-string 사용법 (★★★★★ 강력 추천)
  # 문자열 시작에 f를 붙이고, 변수를 { } 중괄호로 직접 감쌉니다.
  f_string_result = f"안녕하세요, {name}입니다. 저는 {place}에 삽니다."
  print(f_string_result)
  # 결과: 안녕하세요, 진성입니다. 저는 서울에 삽니다.


  # 2. .format() 메소드 사용법
  # 문자열 안에 { }로 자리를 비워두고, 뒤에서 .format()으로 값을 순서대로 넣어줍니다.
  format_result = "안녕하세요, {}입니다. 저는 {}에 삽니다.".format(name, place)
  print(format_result)
  # 결과: 안녕하세요, 진성입니다. 저는 서울에 삽니다.
  ```

---

## 11. enumerate() (이뉴머레이트)
- **설명:** 리스트, 튜플 등 순서가 있는 객체를 순회할 때, 요소의 **인덱스 번호**와 **실제 값**을 함께 반환해주는 유용한 함수입니다. 마치 '자동으로 번호를 붙여주는 도우미'와 같습니다.
- **예시 코드:**
  ```python
  fruits = ['사과', '바나나', '딸기']
  #1. `enumerate()`를 사용해 인덱스와 값을 동시에 얻기
  for index, fruit in enumerate(fruits):
    print(f"인덱스: {index}, 값: {fruit}")
  # 결과:
  # 인덱스: 0, 값: 사과
  # 인덱스: 1, 값: 바나나
  # 인덱스: 2, 값: 딸기

  # 2. `enumerate()`는 인덱스를 0부터 시작하지만,
  #    `start` 옵션을 이용해 시작 인덱스를 변경할 수 있습니다.
  for index, fruit in enumerate(fruits, start=1):
    print(f"순서: {index}번, 과일: {fruit}")
  # 결과:
  # 순서: 1번, 과일: 사과
  # 순서: 2번, 과일: 바나나
  # 순서: 3번, 과일: 딸기
  ```

---

## 12. ord()와 chr()
- **설명:** `ord()`는 문자를 아스키 코드(정수)로 변환하는 함수이고, `chr()`은 아스키 코드(정수)를 문자로 변환하는 함수입니다. 이 두 함수를 사용하면 '시저 암호' 문제처럼 문자를 일정한 규칙에 따라 바꾸는 작업을 쉽게 구현할 수 있습니다.
- **예시 코드:**
  ```python
  # 1. ord(): 문자를 아스키 코드(정수로 변환)
  char_a = 'A'
  char_z = 'z'
  print("ord('{}'): {}".format(char_a, ord(char_a))) # 결과: ord('A'): 65
  print("ord('{}'): {}".format(char_z, ord(char_z))) # 결과: ord('z'): 122

  # 2. chr(): 아스키 코드(정수)를 문자로 변환
  ascii_A = 65
  ascii_z = 122
  print("chr({}): {}".format(ascii_A, chr(ascii_A))) # 결과: chr(65): A
  print("chr({}): {}".format(ascii_z, chr(ascii_z))) # 결과: chr(122): z
  ```


## 13. get()
- **설명:** 딕셔너리에서 `키(key)`를 사용해 `값(value)`을 가져오는 메소드입니다. 일반적인 대괄호 `[]` 접근 방식과 다르게, 존재하지 않는 키에 접근해도 오류가 발생하지 않고 `None`을 반환합니다. 이 덕분에 코드를 더 안전하게 작성할 수 있습니다.
- **예시 코드:**
  ```python
  my_dict = {'apple': 1, 'banana': 2}

  # 1. 존재하는 키에 접근
  value = my_dict.get('apple')
  print("my_dict.get('apple'): {}".format(value)) # 결과: my_dict.get('apple'): 1

  # 2. 존재하지 않는 키에 접근 -> 오류 없이 None을 반환
  value = my_dict.get('orange')
  print("my_dict.get('orange'): {}".format(value)) # 결과: my_dict.get('orange'): None

  # 3. get()은 키가 없을 때 반환할 기본값을 설정할 수 있습니다.
  value = my_dict.get('orange', '키가 없습니다')
  print("my_dict.get('orange', '키가 없습니다'): {}".format(value)) # 결과: my_dict.get('orange', '키가 없습니다'): 키가 없습니다
  ```

---
