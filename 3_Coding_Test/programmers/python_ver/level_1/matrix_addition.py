# 문제: 프로그래머스 Lv.1 '행렬의 덧셈'
# 설명: 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 
#       2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12950

# 풀이:
# 1. 완성된 2차원 행렬을 통째로 담을 빈 상자(answer = [])를 준비한다.
# 2. 첫 번째 반복문(i)으로 행렬의 세로 줄(행의 개수, len(arr1))만큼 차례대로 내려간다.
# 3. 새로운 가로 줄(행) 작업을 시작할 때마다, 해당 줄의 숫자들을 모아둘 빈 바구니(row = [])를 새로 꺼낸다.
# 4. 두 번째 반복문(j)으로 가로 칸(열의 개수, len(arr1[0]))을 하나씩 지나가며, 같은 위치에 있는 두 숫자를 더해 바구니에 담는다(row.append).
# 5. 한 줄의 계산이 끝나면 완성된 바구니를 큰 상자에 통째로 넣고(answer.append(row)), 모든 줄이 끝날 때까지 반복한 뒤 상자를 반환한다.

def solution(arr1, arr2):
    answer = []
    
    for i in range(len(arr1)):
        row = []  # 매 행을 시작할 때마다 새 바구니 준비 (맨 위에서 미리 선언할 필요 없음)
        
        for j in range(len(arr1[0])):
            row.append(arr1[i][j] + arr2[i][j])
        answer.append(row)
        
    return answer