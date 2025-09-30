# 문제: 프로그래머스 Lv.1 '제일 작은 수 제거하기'
# 설명: 정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수, solution을 완성해주세요.
#       단, 리턴하려는 배열이 빈 배열인 경우엔 배열에 -1을 채워 리턴하세요.
#       예를들어 arr이 [4,3,2,1]인 경우는 [4,3,2]를 리턴 하고, [10]면 [-1]을 리턴 합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12935

# 풀이
# 1. 정수를 저장한 배열의 매개변수 arr에서 min()함수를 이용하여 최솟값을 찾은 후 저장한다.
# 2. 그 후, remove()함수를 사용하여 그 최솟값에 해당하는 배열의 값을 제거한다.
# 3. 이 때, 만약 배열에 아무것도 없게 된다면. '-1'을 추가하는 조건문을 세운다.
# 4. 그 후 배열의 값을 return한다.

def solution(arr):

    min_value = min(arr)
    arr.remove(min_value)
    
    if arr == []:
        arr.append(-1)
    
    return arr