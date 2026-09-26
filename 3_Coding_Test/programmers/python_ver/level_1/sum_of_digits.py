# 문제: 프로그래머스 Lv.1 '자릿수 더하기'
# 설명: 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
#       예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12931

# 풀이: while문을 이용한 자릿수 추출 방식입니다.
#       1. n % 10 연산을 통해 현재 수의 일의 자리 숫자(나머지)를 구해 answer에 누적합니다.
#       2. n // 10 연산(정수 나눗셈)을 통해 계산이 끝난 일의 자리를 제거하고 다음 자릿수를 앞으로 당깁니다.
#       3. 위 과정을 n이 0이 될 때까지 반복하면 모든 자릿수의 숫자가 차례대로 더해집니다.
#       4. 루프 종료 후 누적된 answer를 반환합니다.

def solution(n):
    answer = 0

    while(n > 0):
        remainder = n % 10
        answer += remainder
        n = n // 10

    return answer