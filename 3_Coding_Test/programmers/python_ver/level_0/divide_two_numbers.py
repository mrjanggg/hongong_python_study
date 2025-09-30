# 문제: 프로그래머스 Lv.0 '두 수의 나눗셈'
# 설명: 정수 num1과 num2가 매개변수로 주어질 때, num1을 num2로 나눈 값에 1,000을 곱한 후 정수 부분을 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120806
# 풀이: 두 수를 나눈 후 곱하기 1000을 한 후에, 정수값만 취하는것이므로 int() 함수를 사용함.

def solution(num1, num2):
    answer = (num1 / num2) * 1000
    answer = int(answer)
    return answer