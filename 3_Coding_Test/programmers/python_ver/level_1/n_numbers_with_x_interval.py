# 문제: 프로그래머스 Lv.1 'x만큼 간격이 있는 n개의 숫자'
# 설명: 함수 solution은 정수 x와 자연수 n을 입력 받아, x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다. 
#       다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.  
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12954

# 풀이:
# 1. 빈 리스트(answer)를 생성한다.
# 2. 1부터 n까지 반복하면서 (i = 1, 2, ..., n), 각 i에 x를 곱한 값(i*x)을 계산한다.
# 3. 계산된 값(i*x)을 리스트(answer)에 순서대로 추가(append)한다.
# 4. 반복이 완료된 최종 리스트를 반환한다.

def solution(x, n):
    
    answer = []
    
    for i in range(1, n+1):
        answer.append(i*x)
    
    return answer