# 문제: 프로그래머스 Lv.0 '나머지 구하기'
# 설명: 정수 num1, num2가 매개변수로 주어질 때, num1를 num2로 나눈 나머지를 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120810?language=python3
# 풀이: 두 숫자를 '%' 연산자를 이용하여 나머지를 결과값으로 리턴하였음.


def solution(num1, num2):
    answer = num1 % num2
    return answer