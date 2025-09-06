# 문제: 프로그래머스 Lv.1 '두 정수 사이의 합'
# 설명: 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
#       예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12912

# 풀이: a와 b가 같다면 아무거나 반환하고, 다르다면 sum() 함수를 이용하여, range()함수 즉, 범위를 설정한다.
#       즉, a와 b 중 최소값을 나타내는 min()과, 최댓값을 나타내는 max()함수를 이용하여 range(min(), max(), 1)을 활용한다.


def solution(a, b):
    if a == b:
        return a
    else:
        return sum(range(min(a, b), max(a, b) + 1, 1))