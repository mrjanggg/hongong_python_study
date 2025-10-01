# 문제: 프로그래머스 Lv.1 '폰켓몬'
# 설명: 다양한 종류의 폰켓몬이 담긴 리스트에서 N/2마리를 선택할 때, 가장 많은 종류의 폰켓몬을 선택하는 방법을 찾아, 그 종류의 수를 반환하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/1845

# 풀이:
# 1. 중복된 폰켓몬을 제거하기 위해 set()을 사용하여 폰켓몬 종류의 수를 구합니다.
# 2. 전체 폰켓몬 수의 절반(N/2)을 계산합니다.
# 3. 폰켓몬 종류의 수가 N/2보다 크면, N/2마리를 선택하는 것이 더 적기 때문에 N/2를 반환합니다.
# 4. 폰켓몬 종류의 수가 N/2보다 작거나 같으면, 중복 없이 모든 종류를 선택할 수 있으므로, 폰켓몬 종류의 수를 반환합니다.

def solution(nums):
    answer = 0
    
    set_nums = set(nums)
    two_div_nums = int(len(nums)/2)
    
    if len(set_nums) > two_div_nums:
        return two_div_nums
    else:
        return len(set_nums)