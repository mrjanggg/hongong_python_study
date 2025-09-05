# 문제: 프로그래머스 Lv.1 '약수의 합'
# 설명: 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12928

# 풀이: i를 1부터 n까지 차례대로 n과 나누어 떨어지는지 확인한 다음, 
#       나누어 떨어진다면 answer에 i를 더해가는 것을 n까지 반복한다.
#       그 후 최종합을 return한다.


def solution(n):
    answer = 0
    
    for i in range(1, n + 1):
        if(n % i) == 0:
            answer += i

    return answer