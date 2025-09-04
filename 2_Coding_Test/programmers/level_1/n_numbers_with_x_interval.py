# 문제: 프로그래머스 Lv.1 'x만큼 간격이 있는 n개의 숫자'
# 설명: 함수 solution은 정수 x와 자연수 n을 입력 받아, x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다. 
#       다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.  
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12954

# 풀이: 결과를 담을 빈 리스트(answer)를 선언하고, 반복마다 더해줄 초기 x값(origin_x)을 따로 저장합니다.
#       n번 반복하는 for문을 실행하면서, 먼저 현재 x값을 answer 리스트에 추가(append)하고,
#       다음 반복을 위해 x값에 원래 간격(origin_x)만큼 더해주는 과정을 반복합니다.


def solution(x, n):
    answer = []
    origin_x = x
    
    for i in range(0, n):
        answer.append(x)
        x += origin_x
            
    return answer