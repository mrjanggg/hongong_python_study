# 문제: 프로그래머스 Lv.1 '내적'
# 설명: 길이가 같은 두 1차원 정수 배열 a, b가 매개변수로 주어집니다.
#       a와 b의 내적을 return 하도록 solution 함수를 완성해주세요.
#       이때, a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다. (n은 a, b의 길이)
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/70128

# 풀이
# 1. 두 길이가 같은 배열 a,b가 매개변수이니, 이 둘 중 하나의 배열의 길이를 구한 다음
# 2. 길이만큼 for 문을 이용하여 a배열의 첫번째 인덱스부터 끝까지, b배열의 첫번째 인덱스부터 끝까지를 곱한다.
# 3. 그리고 그 곱한것들의 모든 합의 값을 return한다.

def solution(a, b):
    answer = 0
    
    for i in range(len(a)):
        answer += a[i]*b[i]
    
    return answer