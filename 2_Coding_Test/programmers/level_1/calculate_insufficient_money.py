# 문제: 프로그래머스 Lv.1 '부족한 금액 계산하기'
# 설명: 새로 생긴 놀이기구는 인기가 매우 많아 줄이 끊이질 않습니다. 
#       이 놀이기구의 원래 이용료는 price원 인데, 놀이기구를 N 번 째 이용한다면 원래 이용료의 N배를 받기로 하였습니다.
#       즉, 처음 이용료가 100이었다면 2번째에는 200, 3번째에는 300으로 요금이 인상됩니다.
#       놀이기구를 count번 타게 되면 현재 자신이 가지고 있는 금액에서 얼마가 모자라는지를 return 하도록 solution 함수를 완성하세요.
#       단, 금액이 부족하지 않으면 0을 return 하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/82612

# 풀이
# 1. 총 이용료 계산: 놀이기구를 1번부터 count번까지 타면서 매번의 이용료를 total_price 변수에 더합니다. i번째 이용료는 price * i가 됩니다.
# 2. 금액 비교: 계산된 총 이용료 total_price와 가지고 있는 돈 money를 비교합니다.
# 3. 부족한 금액 반환: money가 total_price보다 작으면, abs() 함수를 사용하여 money - total_price의 절댓값을 반환합니다. 이 절댓값이 부족한 금액이 됩니다.
# 4. 부족하지 않은 경우: money가 total_price보다 크거나 같으면, 금액이 부족하지 않으므로 0을 반환합니다.

def solution(price, money, count):
    answer = 0 
    total_price = 0
    
    for i in range(1, count + 1):
        total_price += price * i 
    
    if money < total_price:
        return abs(money - total_price)
    else:
        return 0