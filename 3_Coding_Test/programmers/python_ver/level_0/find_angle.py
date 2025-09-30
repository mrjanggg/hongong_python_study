# 문제: 프로그래머스 Lv.0 '각도기'
# 설명: 각에서 0도 초과 90도 미만은 예각, 90도는 직각, 90도 초과 180도 미만은 둔각 180도는 평각으로 분류합니다. 
#       각 angle이 매개변수로 주어질 때 예각일 때 1, 직각일 때 2, 둔각일 때 3, 평각일 때 4를 return하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120829
# 풀이: 조건문을 이용하여 매개변수의 값이 해당하는 값과 일치한다면 미리 정한 값을 return 시킴.

def solution(angle):
    if 0 < angle < 90:
        answer = 1
    elif angle == 90:
        answer = 2
    elif 90 < angle < 180:
        answer = 3
    elif angle == 180:
        answer = 4
    return answer