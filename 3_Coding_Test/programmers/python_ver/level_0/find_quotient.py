# 문제: 프로그래머스 Lv.0 '몫 구하기'
# 설명: 정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 몫을 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120805
# 풀이: num1을 num2로 나눈후 정수화인 int()함수로 몫 부분만 가져온 후 그 값을 return함.

def solution(num1, num2):
    answer = int(num1 / num2)
    return answer