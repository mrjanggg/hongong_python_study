# 문제: 프로그래머스 Lv.1 '없는 숫자 더하기'
# 설명: 0부터 9까지의 숫자 중 일부가 들어있는 정수 배열 numbers가 매개변수로 주어집니다. 
#       numbers에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더한 수를 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/86051

# 풀이: 
#   1. numbers라는 매개변수의 합을 구하는 sum()을 활용하여
#   2. 0~9까지의 합인 45에서 그 해당하는 값을 뺀 후 return하면 된다.

def solution(numbers):

    answer = 45 - sum(numbers)
    
    return answer