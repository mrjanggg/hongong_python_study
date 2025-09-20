# 문제: 프로그래머스 Lv.1 '행렬의 덧셈'
# 설명: 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 
#       2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12950

# 풀이: 
#   1. 최종 결과 행렬(answer)과 각 행을 임시로 담을 리스트(temp_answer)를 선언하고,
#      두 행렬의 행(row)과 열(col)의 길이를 미리 구해둡니다.
#   2. 바깥쪽 for문을 이용해 행(row)만큼 반복을 시작합니다.
#   3. 안쪽 for문으로 각 행의 열(col)만큼 반복하면서,
#      arr1[i][j]와 arr2[i][j]의 값을 더해 임시 리스트(temp_answer)에 추가(append)합니다.
#   4. 안쪽 for문이 끝나면, 완성된 한 줄의 행(temp_answer)을 결과 행렬(answer)에 추가합니다.
#      그리고 다음 행을 담기 위해 임시 리스트(temp_answer)를 다시 빈 리스트로 초기화합니다.
#   5. 모든 반복이 끝나면, 행렬 덧셈이 완료된 최종 결과 행렬(answer)을 return합니다.

def solution(arr1, arr2):
    answer = []
    temp_answer = []
    
    row = len(arr1) #2차원 행렬의 행의 길이를 구하는 방식
    col = len(arr1[0]) #2차원 행렬의 열의 길이를 구하는 방식
    
    # 이 문제의 핵심은 2차원 배열을 넣을 때, 리스트를 다시 리스트화 시켜서 넣어야한다는 점이다.(즉 두개의 리스트가 필요함.)
    # 굉장히 좋은 문제니 나중에 다시 복습하자.
    for i in range(row):
        for j in range(col):
            temp_answer.append(arr1[i][j] + arr2[i][j])
        answer.append(temp_answer)
        temp_answer = []
    
    return answer
