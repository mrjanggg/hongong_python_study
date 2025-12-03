# 문제: 프로그래머스 lv.1 '최대공약수와 최소공배수'
# 설명: 두 개의 자연수 n과 m을 입력받아, 최대공약수(GCD)와 최소공배수(LCM)를
#       이 순서대로 배열에 담아 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12940

# 풀이:
# 1. 유클리드 호제법을 사용하여 최대공약수(GCD)를 구한다. (나머지가 0이 될 때까지 나누는 과정을 반복)
# 2. GCD가 구해지면, 최소공배수(LCM)는 다음 공식으로 계산한다: LCM = (원본 n * 원본 m) / GCD
# 3. 최대공약수를 찾기 위해 m, n 값이 계속 변경되므로, 원본 n, m 값은 따로 저장해 둔다.
# 4. 최종적으로 [GCD, LCM] 순서로 리스트를 구성하여 반환한다.

def solution(n, m):
    answer = []
    # 원본 n과 m 값을 최소공배수 계산을 위해 저장
    origin_n, origin_m = n, m
    
    # 유클리드 호제법을 이용해 최대공약수(GCD)를 찾음
    while True:
        # 나머지가 0이면, n이 최대공약수(GCD)임
        if m % n == 0:
            # 1. 최대공약수(n) 추가
            answer.append(n)
            
            # 2. 최소공배수(LCM) 계산 및 추가: LCM = (n * m) / GCD
            answer.append((origin_n * origin_m) // n)
            break
        else:
            # m을 n으로, n을 나머지(m % n)로 교체하고 반복
            m, n = n, (m % n)
            
    return answer