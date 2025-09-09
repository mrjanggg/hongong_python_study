# 문제: 프로그래머스 Lv.1 '나누어 떨어지는 숫자 배열'
# 설명: array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
#       divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12910

# 풀이: 
#   1. for문을 이용하여 매개변수 arr 리스트가 divisor와 나누어 떨어지는지 확인한다.
#   2. 나누어 떨어진다면, 해당 배열값을 리스트의 하위함수 append()를 활용하여 추가한다.
#   3. 마지막으로 sorted()함수를 이용하여 오름차순으로 정렬하고,
#   4. 만약, 리스트가 비어있다면 if not 'LIST명'을 활용하여 조건부 검색을 한 뒤, append(-1)을 하여 [-1]을 리턴하게 한다.

def solution(arr, divisor):
    answer = []
    
    for i in range(len(arr)):
        if arr[i] % divisor == 0:
            answer.append(arr[i])
    
    if not answer:
        answer.append(-1)
    else:
        answer = sorted(answer)
    
    return answer