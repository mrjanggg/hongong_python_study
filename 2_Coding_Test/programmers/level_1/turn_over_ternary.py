# 문제: 프로그래머스 Lv.1 '3진법 뒤집기'
# 설명: 자연수 n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 반환합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68935

# 풀이:
# 1. 재귀 함수(three_recursive)를 한 번만 호출하여 10진수 n을 뒤집힌 3진수 문자열로 변환하고, 그 결과를 변수(reversed_ternary_str)에 저장합니다.
# 2. 이 문자열을 순회하며 각 자릿수(문자)를 정수로 변환하여 three_list라는 새로운 리스트에 담습니다.
# 3. three_list를 뒤집어서(역순으로) 다시 순회하며, 각 자릿수에 3의 거듭제곱을 곱하여 최종 값을 계산합니다.
# 4. 모든 자릿수에 대한 계산이 끝나면 최종적인 10진수 값인 answer를 반환합니다.

def solution(n):
    answer = 0
    
    reversed_ternary_str = three_recursive(n)
    three_list = []
    j = 0
    
    # 2. 뒤집힌 3진수 문자열을 순회하며 각 자릿수를 정수로 변환하여 리스트에 담기
    for char in reversed_ternary_str:
        three_list.append(int(char))
    
    # 3. 리스트를 뒤집어서 10진법으로 변환
    for item in three_list[::-1]:
        answer += item * (3 ** j)
        j += 1
        
    return answer


# 재귀 함수: 10진수를 3진수로 변환하며 뒤집힌 문자열을 반환
def three_recursive(n):
    divisor = n // 3
    remainder = n % 3
    
    if divisor == 0:
        return str(remainder)
    else:
        return three_recursive(divisor) + str(remainder)
    




def solution(n):
    answer = 0
    three_list = []
    i = 0
    
    # 1. 재귀 함수를 한 번만 호출하여 결과를 변수에 저장
    reversed_ternary_str = three_recursive(n)
    
    # 2. 뒤집힌 3진수 문자열을 순회하며 각 자릿수를 정수로 변환하여 리스트에 담기
    for char in reversed_ternary_str:
        three_list.append(int(char))
    
    for item in three_list[::-1]:
        answer += item * (3 ** i)
        i += 1
        
    return answer


#재귀를 호출하기.
def three_recursive(n):
    divisor = n // 3
    reminder = n % 3
    
    if divisor == 0:
        return str(reminder)
    else:
        return str(reminder) + three_recursive(divisor)