# 문제: 프로그래머스 lv.1 '최대공약수와 최소공배수'
# 설명: 두 개의 자연수 n과 m을 입력받아, 최대공약수(GCD)와 최소공배수(LCM)를
#       이 순서대로 배열에 담아 반환해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12940

# 풀이:
# 1. 최대공약수(GCD) 역순 탐색:
#    - 공약수는 두 수 중 작은 수보다 클 수 없으므로, min(n, m)부터 1까지 1씩 줄여가며(range(..., 0, -1)) 검사한다.
#    - n과 m 모두 나누어떨어지는 첫 번째 수(i)가 가장 큰 공약수이므로, gcd에 저장하고 answer에 담은 뒤 break로 즉시 탈출한다.
# 2. 최소공배수(LCM) 공식 계산:
#    - '두 수의 곱 = 최대공약수 * 최소공배수' 성질을 활용한다.
#    - 정수 나눗셈 연산자(//)를 사용해 (n * m) // gcd 로 최소공배수를 구해 answer에 추가한다.
# 3. 결과 반환:
#    - [최대공약수, 최소공배수] 형태로 완성된 answer 리스트를 반환한다.

def solution(n, m):
    answer = []
    gcd = 0
    
    # 최대 공약수 구하기
    for i in range(min(n, m), 0, -1):
        if (n % i == 0) and (m % i == 0):
            gcd = i
            answer.append(i)
            break
            
    # 최소 공배수 구하기
    answer.append((n * m) // gcd)
    
    return answer