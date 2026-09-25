# 문제: 프로그래머스 Lv.1 '두 정수 사이의 합'
# 설명: 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
#       예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12912

# 풀이: min()함수와 max()함수를 이용하여, 두 매개변수 a b 중 최솟값과 최댓값을 새로운 변수에 넣고,
#       for문을 돌려 sum에 하나씩 더한다. 단, 최댓값은 range()범위를 충족시키기 위하여 1을 더해야한다.

def solution(a, b):
    sum = 0
    min_int = min(a,b)
    max_int = max(a,b)
    
    for i in range(min_int, max_int + 1):
        sum += i
    
    return sum