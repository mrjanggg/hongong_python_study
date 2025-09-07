# 문제: 프로그래머스 Lv.1 '정수 제곱근 판별'
# 설명: 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
#       n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12934

# 풀이: 
#   1. import math를 선언한다.(제곱근 및 제곱 함수를 사용하기 위하여)
#   2. 매개변수이자 양의 정수인 n을 제곱근 함수를 취한다.
#   3. 이 제곱근 함수의 결과값을 int()함수를 이용하여 x로 정수화 시킨 후
#   4. 다시 이 x를 제곱하여 본래의 n과 같은지 테스트한다.
#   5. 만약에 같다면 pow(x+1)를, 다르다면 -1을 return한다.

import math

def solution(n):
    sqrt_n = math.sqrt(n)
    x = int(sqrt_n)
    new_n = math.pow(x, 2)
    
    if n == new_n:
        return math.pow(x+1, 2)
    else:
        return -1