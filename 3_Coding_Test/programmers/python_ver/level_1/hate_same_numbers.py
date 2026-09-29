# 문제: 프로그래머스 Lv.1 '같은 숫자는 싫어'
# 설명: 배열 arr가 주어집니다. 배열 arr의 각 원소는 숫자 0부터 9까지로 이루어져 있습니다.
#       이때, 배열 arr에서 연속적으로 나타나는 숫자는 하나만 남기고 전부 제거하려고 합니다. 
#       단, 제거된 후 남은 수들을 반환할 때는 배열 arr의 원소들의 순서를 유지해야 합니다. 
#       예를 들면, arr = [1, 1, 3, 3, 0, 1, 1] 이면 [1, 3, 0, 1] 을 return 합니다.
#       arr = [4, 4, 4, 3, 3] 이면 [4, 3] 을 return 합니다.
#       배열 arr에서 연속적으로 나타나는 숫자는 제거하고 남은 수들을 return 하는 solution 함수를 완성해 주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12906

# 풀이:
# 1. 중복이 제거된 결과를 차례대로 담을 빈 상자(answer = [])를 준비하고, 배열의 전체 길이(len_arr)를 구해둔다.
# 2. 1번 인덱스부터 끝까지 순회하며, 직전 숫자(arr[i-1])와 현재 숫자(arr[i])가 달라지는 '경계 지점'을 찾는다.
# 3. 숫자가 달라졌다면 연속된 묶음이 끝난 것이므로, 해당 묶음의 대표 숫자인 직전 값(arr[i-1])을 answer에 담는다.
# 4. 루프가 끝나면 마지막 연속 묶음의 숫자(arr[len_arr-1])가 아직 담기지 않은 상태이므로, 배열이 비어있지 않은지(len_arr > 0) 확인한 후 마지막 숫자를 추가한다.
# 5. 모든 연속 중복이 제거된 answer를 반환한다.

def solution(arr):
    answer = []
    len_arr = len(arr)
    
    for i in range(1, len_arr):
        if arr[i-1] != arr[i]:
            answer.append(arr[i-1]) 
    
    if len_arr > 0:
        answer.append(arr[len_arr-1])
    
    return answer