# 문제: 프로그래머스 Lv.1 '약수의 개수와 덧셈'
# 설명: 두 정수 left와 right가 매개변수로 주어집니다.
#       left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 
#       약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/77884

# 풀이
# 1. 결과 변수 초기화: 최종 결과를 저장할 answer 변수와 약수의 개수를 세는 divisor 변수를 0으로 초기화합니다.
# 2. 반복문 생성: left부터 right까지 모든 수를 순회하는 외부 for문을 만듭니다.
# 3. 약수 개수 계산: 각 수(i)의 약수 개수를 세기 위해 1부터 i까지 반복하는 내부 for문을 만듭니다.
# 4. 약수 판별: i를 j로 나누었을 때 나머지가 0인지 확인하여 약수인지 판별하고, 약수일 경우 divisor를 1씩 증가시킵니다.
# 5. 홀짝 판별 및 연산: 내부 for문이 끝난 후, divisor의 개수가 짝수인지 홀수인지 확인하여, 짝수일 경우 answer에 i를 더하고, 홀수일 경우 i를 뺍니다.
# 6. divisor 초기화: 다음 수의 약수 개수를 세기 위해 divisor를 다시 0으로 초기화합니다.
# 7. 결과 반환: 모든 반복이 끝나면 answer를 반환합니다.

def solution(left, right):
    answer = 0
    divisior = 0

    for i in range(left, right + 1, 1):
        for j in range(1, i + 1, 1):
            if (i % j == 0):
                divisior += 1
        
        if divisior % 2 == 0:
            answer += i
        else:
            answer -= i  
        
        divisior = 0
        
    return answer