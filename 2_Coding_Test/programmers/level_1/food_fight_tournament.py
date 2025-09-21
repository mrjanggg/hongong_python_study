# 문제: 프로그래머스 Lv.1 '푸드 파이트 대회'
# 설명: 주어진 음식 배열을 이용해 두 선수가 공정하게 먹을 수 있는 음식 배치를 문자열로 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/134240

# 풀이:
# 1. 한 선수가 먹을 음식의 배열을 순서대로 나타내는 문자열(left_half)을 만듭니다.
# 2. food 배열을 인덱스 1부터 순회하며 각 음식의 양을 2로 나눈 몫을 구합니다.
# 3. 몫의 개수만큼 현재 인덱스(음식 번호)를 문자열로 만들어 left_half에 이어붙입니다.
# 4. left_half 문자열을 만든 후, 이 문자열을 뒤집어(reverse_half) 만듭니다.
# 5. 최종 결과는 left_half와 물(0), 그리고 reverse_half를 순서대로 합쳐 반환합니다.

def solution(food):
    left_half = ''
    
    for i in range(1, len(food)):
        left_half += str(i) * (food[i] // 2)

    answer = left_half + '0' + left_half[::-1]
    
    return answer