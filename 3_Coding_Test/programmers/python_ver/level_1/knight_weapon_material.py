# 문제: 프로그래머스 lv.1 '기사단원의 무기'
# 설명: 1부터 number까지 각 기사 번호의 약수 개수를 공격력으로 한다.
#       공격력이 limit을 초과하는 기사는 power로 공격력이 제한된다.
#       무기 공격력 1당 1kg의 철이 필요할 때, 모든 무기를 만드는 데 필요한 총 철의 무게(공격력 합)를 구한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/136798

# 풀이:
# 1. 1부터 number까지 모든 기사의 약수 개수를 효율적으로 계산하여 리스트에 저장하거나 누적한다.
# 2. 약수 개수를 계산할 때, 'i'의 제곱근까지만 반복(O(sqrt(N)))하여 약수의 짝을 찾아 계산한다.
# 3. 각 기사의 약수 개수(공격력)가 limit을 초과하면 power로 대체하고, 아니면 원래 공격력을 사용한다.
# 4. 모든 기사의 최종 공격력(필요한 철의 무게)을 합산하여 반환한다.

def solution(number, limit, power):
    answer = 0
    
    for i in range(1, number + 1):
        divisor_count = 0
        int_sqrt_num = int(i ** 0.5)

        for j in range(1, int_sqrt_num + 1):
            if i % j == 0:
                if j * j == i:
                    divisor_count += 1
                else:
                    divisor_count += 2

        if divisor_count > limit:
            answer += power
        else:
            answer += divisor_count
    
    return answer