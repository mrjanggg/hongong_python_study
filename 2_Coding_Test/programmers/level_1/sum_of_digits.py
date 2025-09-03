# 문제: 프로그래머스 Lv.1 '자릿수 더하기'
# 설명: 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
#       예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12931

# 풀이: 매개변수 n을 각 자릿수별로 접근하기 위해 str()을 이용해 문자열로 변환합니다.
#       for 반복문으로 문자열의 각 문자를 하나씩 순회하며,
#       int()를 사용해 다시 숫자로 바꾼 뒤 answer 변수에 누적하여 더합니다.
#       모든 자릿수의 합이 담긴 answer를 최종적으로 return합니다.


def solution(n):
    answer = 0
    char_n = str(n)

    for i in char_n:
        answer += int(i)

    return answer