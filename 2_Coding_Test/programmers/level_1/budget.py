# 문제: 프로그래머스 Lv.1 '예산'
# 설명: S사에서는 각 부서에 필요한 물품을 지원해 주기 위해 부서별로 물품을 구매하는데 필요한 금액을 조사했습니다.
#       그러나, 전체 예산이 정해져 있기 때문에 모든 부서의 물품을 구매해 줄 수는 없습니다.
#       그래서 최대한 많은 부서의 물품을 구매해 줄 수 있도록 하려고 합니다.
#       물품을 구매해 줄 때는 각 부서가 신청한 금액만큼을 모두 지원해 줘야 합니다.
#       예를 들어 1,000원을 신청한 부서에는 정확히 1,000원을 지원해야 하며, 1,000원보다 적은 금액을 지원해 줄 수는 없습니다.
#       부서별로 신청한 금액이 들어있는 배열 d와 예산 budget이 매개변수로 주어질 때, 최대 몇 개의 부서에 물품을 지원할 수 있는지 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12982

# 풀이
# 1. 가장 적은 비용으로 최대한 많은 부서를 지원하기 위해, sorted(d)를 사용하여 부서별 신청 금액이 담긴 배열 d를 오름차순으로 정렬합니다.
# 2. for 반복문을 사용하여 정렬된 sorted_list의 각 부서별 신청 금액을 순서대로 하나씩 확인합니다.
# 3. 반복문 안에서, 현재 부서의 신청 금액이 남아있는 budget보다 작거나 같은지 확인하는 조건문을 작성합니다. 동시에 budget이 0보다 큰지 확인하여 불필요한 연산을 방지합니다.
# 4. 조건이 참일 경우, 해당 부서에 물품을 지원하고 budget에서 해당 금액을 차감합니다. 그리고 지원된 부서의 개수를 세기 위해 new_list에 해당 부서의 금액을 추가합니다.
# 5. 모든 반복이 끝나면, len(new_list)를 통해 지원된 부서의 총 개수를 반환합니다.

def solution(d, budget):
    answer = 0
    
    sorted_list = sorted(d)
    new_list = []
    
    for i in range(len(sorted_list)):
        if (sorted_list[i] <= budget) and (0 <= budget):
            new_list.append(sorted_list[i])
            budget -= int(sorted_list[i])
            
    return len(new_list)