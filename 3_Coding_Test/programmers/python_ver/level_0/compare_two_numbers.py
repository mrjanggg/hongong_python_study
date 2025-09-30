# 문제: 프로그래머스 Lv.0 '숫자 비교하기'
# 설명: 정수 num1과 num2가 매개변수로 주어집니다. 두 수가 같으면 1 다르면 -1을 retrun하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120807
# 풀이: 두 숫자가 같으면 1을 반환하는, 그렇지 않다면 -1을 반환하는 조건문을 작성하고 그 최종값을 리턴하게하였음.

def solution(num1, num2):
    if num1 == num2:
        answer = 1
    else:
        answer = -1
    return answer