# 문제: 프로그래머스 Lv.1 '콜라 문제'
# 설명: 빈 병 a개를 주면 b개의 새 콜라를 주는 마트가 있을 때, 빈 병 n개로 받을 수 있는 총 콜라의 개수를 구하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132267

# 풀이:
# 1. 받은 총 콜라의 개수를 저장할 answer 변수를 0으로 초기화합니다.
# 2. n이 a보다 작아져 더 이상 콜라를 받을 수 없을 때까지 while 반복문을 실행합니다.
# 3. 반복문 안에서, 교환으로 받을 수 있는 새 콜라의 수와 교환 후 남는 빈 병의 수를 계산합니다.
# 4. 새로 받은 콜라의 수를 answer에 더하고, 남은 빈 병과 새로 받은 콜라병을 합쳐 n을 업데이트합니다.
# 5. 모든 교환이 끝난 후, 최종적으로 answer를 반환합니다.

def solution(a, b, n):
    answer = 0
    
    while True:
        if n // a == 0:
            break
        else:
            num_of_coke = (n // a) * b
            remain_coke = n % a
            answer += num_of_coke
            n = num_of_coke + remain_coke
            
    return answer

'''
# 논리적으로는 맞으나 이 문제는 재귀가 비 효율적일 수 있음.(그래서 계속 런타임 에러가 뜨는 이유)


def solution(a, b, n):
    answer = 0
    answer = coke(a, b, n)
    
    return answer

def coke(a, b, n):
    #a: 콜라를 받기 위하여 주어야 하는 병 수 
    #b: a만큼 주면 받게 될 콜라병 갯수
    #n: 가지고 있는 빈병의 갯수
    #r: 나머지

    return_of_coke = (n//a)*b

    if n < a:
        return 0
    else:
        return return_of_coke + coke(a, b, (n//a)*b+ n%a)
'''