# 문제: 프로그래머스 Lv.1 '짝수와 홀수'
# 설명: 정수 num이 짝수일 경우 "Even"을 반환하고 홀수인 경우 "Odd"를 반환하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12937

# 풀이: 매개변수 num을 받은 후, '%' 연산자를 이용하여 2로 나눌 때 나머지가 0이면 'Even'을,
#       그렇지 않으면, 'Odd'를 반환하도록 함.

def solution(num):
    
    answer = ''
    
    if (num % 2 == 0):
        answer = "Even"
    else:
        answer = "Odd"

    return answer