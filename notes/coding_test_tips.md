# 파이썬 코딩테스트 팁 정리 노트

## 1. 숫자를 문자열로 변환하는 팁.
- **설명:** 숫자 number을 str(number)으로 변환한 뒤, 다시 str를 list()로 변환해야한다.
            이렇게 해야, 나중에 개별 숫자들이 리스트의 하나의 개별 요소가 되어 언제든지 개별적으로 수정이 가능하기 때문이다.
- **예시 코드:**
  ```python
  list_number = list(str(number))
  ```
  
---

  ## 2. reversed()함수 쓸 때 주의해야할 점.숫자를 문자열로 변환하는 팁.
- **설명:** reversed() 함수의 결과가 제너레이터이기 때문에, 여러번 사용이 안되며, 필요할 때만 곧바로 함수를 사용해야한다.
- **예시 코드:**
  ```python
  number = [1, 2, 3, 4, 5, 6]

  for i in reversed(numbers):               #즉 필요한 시점에 reversed() 함수를 사용합니다.
    print("첫 번째 반복문: {}".format(i)) 

  for i in reversed(numbers):               #즉 필요한 시점에 reversed() 함수를 사용합니다.
    print("두 번째 반복문: {}".format(i))
  ```

---

