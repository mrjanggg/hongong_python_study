# 문제: 프로그래머스 lv.1 '정수 제곱근 판별'
# 설명: 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지를 판별한다.
#       n이 x의 제곱이라면 (x+1)의 제곱을 반환하고, n이 x의 제곱이 아니라면 -1을 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12934

# 풀이:
# 1. math.sqrt(n)으로 제곱근을 구한 뒤 int()로 소수점을 버려 정수 후보(sqrt_num)를 얻는다.
# 2. sqrt_num을 다시 제곱했을 때(sqrt_num ** 2) 원래 n과 같다면, n은 양의 정수 sqrt_num의 제곱수임이 확실하다.
# 3. 제곱수가 맞다면 요구사항대로 (sqrt_num + 1)의 제곱을 반환한다.
# 4. 제곱수가 아니라면 -1을 반환한다. (불필요한 반복문 없이 O(1)로 해결하는 수학적 풀이)

import math

def solution(n):
    sqrt_num = int(math.sqrt(n))
    
    if sqrt_num ** 2 == n:
        return (sqrt_num + 1) ** 2
    else:
        return -1