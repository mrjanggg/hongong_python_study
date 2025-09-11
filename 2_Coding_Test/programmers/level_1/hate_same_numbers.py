# 문제: 프로그래머스 Lv.1 '같은 숫자는 싫어'
# 설명: 배열 arr가 주어집니다. 배열 arr의 각 원소는 숫자 0부터 9까지로 이루어져 있습니다.
#       이때, 배열 arr에서 연속적으로 나타나는 숫자는 하나만 남기고 전부 제거하려고 합니다. 
#       단, 제거된 후 남은 수들을 반환할 때는 배열 arr의 원소들의 순서를 유지해야 합니다. 
#       예를 들면, arr = [1, 1, 3, 3, 0, 1, 1] 이면 [1, 3, 0, 1] 을 return 합니다.
#       arr = [4, 4, 4, 3, 3] 이면 [4, 3] 을 return 합니다.
#       배열 arr에서 연속적으로 나타나는 숫자는 제거하고 남은 수들을 return 하는 solution 함수를 완성해 주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12906

# 풀이
# 1. 결과를 담을 빈 배열 answer를 생성합니다. 그리고 주어진 배열 arr의 첫 번째 원소는 어떤 경우든 결과에 포함되므로, answer에 먼저 추가합니다.
# 2. arr 배열의 두 번째 원소부터 끝까지 반복문을 실행하여, 각 원소를 그 앞의 원소와 비교합니다. 이때 for i in range(len(arr)-1)처럼 배열의 마지막 원소 바로 앞까지 순회해야 인덱스 에러가 발생하지 않습니다.
# 3. 반복문 안에서 arr[i]와 그 다음 원소인 arr[i+1]이 서로 다른지 확인하는 조건문을 작성합니다.
# 4. 만약 두 원소가 다르다면, 즉 연속된 숫자의 묶음이 끝났다면, 다음 원소인 arr[i+1]을 answer 배열에 추가합니다.
# 5. 반복문이 모두 완료되면, 연속된 숫자가 제거된 최종 결과인 answer 배열을 반환합니다.

def solution(arr):
    answer = []
    answer.append(arr[0])
    
    for i in range(len(arr)-1):
        if arr[i] != arr[i+1]:
            answer.append(arr[i+1])
    
    return answer