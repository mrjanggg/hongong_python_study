# 문제: 프로그래머스 lv.1 '정수 제곱근 판별'
# 설명: 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지를 판별한다.
#       n이 x의 제곱이라면 (x+1)의 제곱을 반환하고, n이 x의 제곱이 아니라면 -1을 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12934

# 풀이:
# 1. n의 제곱근(n**0.5)을 구한 후 정수형으로 변환하여 x(new_int_n)를 얻는다.
# 2. x를 다시 제곱했을 때 (new_int_n ** 2) 원래의 n과 같다면, n은 x의 제곱근이 확실하다는 뜻이다.
# 3. 제곱이 맞으면, 문제의 요구사항대로 (x+1)을 제곱하여 반환한다.
# 4. 제곱이 아니면 -1을 반환한다. (수학적 성질을 이용한 효율적인 풀이)

def solution(n):
    new_int_n = int(n**0.5)
    
    if (new_int_n ** 2) == n:
        return (new_int_n + 1) ** 2
    else:
        return -1