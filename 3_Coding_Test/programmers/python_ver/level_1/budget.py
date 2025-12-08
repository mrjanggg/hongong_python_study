# 문제: 프로그래머스 Lv.1 '예산'
# 설명: S사에서는 각 부서에 필요한 물품을 지원해 주기 위해 부서별로 물품을 구매하는데 필요한 금액을 조사했습니다.
#       그러나, 전체 예산이 정해져 있기 때문에 모든 부서의 물품을 구매해 줄 수는 없습니다.
#       그래서 최대한 많은 부서의 물품을 구매해 줄 수 있도록 하려고 합니다.
#       물품을 구매해 줄 때는 각 부서가 신청한 금액만큼을 모두 지원해 줘야 합니다.
#       예를 들어 1,000원을 신청한 부서에는 정확히 1,000원을 지원해야 하며, 1,000원보다 적은 금액을 지원해 줄 수는 없습니다.
#       부서별로 신청한 금액이 들어있는 배열 d와 예산 budget이 매개변수로 주어질 때, 최대 몇 개의 부서에 물품을 지원할 수 있는지 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12982

# 풀이:
# 1. 탐욕 알고리즘(Greedy Algorithm) 적용: 최대 개수의 부서를 지원하려면, 가장 적은 비용을 요청한 부서부터 지원해야 한다.
# 2. 부서별 신청 금액 리스트(d)를 오름차순으로 정렬한다.
# 3. 정렬된 리스트를 순회하며 현재 요청 금액을 잔여 budget과 비교한다.
# 4. 요청 금액이 budget보다 작거나 같으면, answer(지원 부서 수)를 1 증가시키고 budget에서 해당 금액을 차감한다.
# 5. budget이 0 미만이 되거나 리스트의 끝에 도달하면 반복을 멈추고 answer를 반환한다.

def solution(d, budget):
    answer = 0
    sorted_list = sorted(d)
    
    for i in range(len(sorted_list)):
        if (sorted_list[i] <= budget) and (0 <= budget):
            answer += 1
            budget -= int(sorted_list[i])
            
    return answer