# 문제: 프로그래머스 lv.1 '소수 만들기'
# 설명: 주어진 숫자 배열(nums)에서 서로 다른 3개의 숫자를 골라 더했을 때, 그 합이 소수(Prime Number)가 되는 경우의 개수를 구한다.
#       (제한사항: nums 길이는 3~50, 원소는 1~1,000)
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12977

# 풀이:
# 1. Python의 itertools.combinations를 사용하여 nums에서 3개의 숫자를 뽑는 모든 조합을 생성한다. (3중 for문 대체, 간결성 확보)
# 2. 각 조합의 합(sum_of_nums)을 구한다.
# 3. 소수 판별: 합의 제곱근까지만 반복(O(sqrt(N)))하여 약수가 존재하는지 확인한다.
# 4. 약수가 없으면(소수이면) answer를 1 증가시킨다.

from itertools import combinations

def solution(nums):
    answer = 0
    
    # 1. nums에서 3개의 원소를 뽑는 모든 조합을 생성하여 순회
    for trio in combinations(nums, 3):
        
        # 2. 3개 원소의 합계 계산
        sum_of_nums = sum(trio)
        
        # 3. 소수 판별을 위해 합의 제곱근 계산
        sqrt_sum_of_nums = (sum_of_nums) ** 0.5
        is_prime = True
        
        # 4. 2부터 제곱근까지 나누어 떨어지는지 확인
        for l in range(2, int(sqrt_sum_of_nums) + 1):
            if (sum_of_nums % l) == 0:
                is_prime = False
                break
        
        # 5. 소수일 경우 개수 증가
        if is_prime:
            answer += 1
            
    return answer