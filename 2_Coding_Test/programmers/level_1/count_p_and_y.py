# 문제: 프로그래머스 Lv.1 '문자열 내 p와 y의 개수'
# 설명: 대문자와 소문자가 섞여있는 문자열 s가 주어집니다. 
#       s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 
#       'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 
#       단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12916

# 풀이: 
#       1. 매개변수이자 문자열인 s를 list화 시킨다.
#       2-1. 그 후, 'p' 혹은 'P'의 갯수를 센다.
#       2-2. 그 갯수를 변수 sum_of_p에 담는다.
#       3-1. 그 후, 'y' 혹은 'Y'의 갯수를 센다.
#       3-2. 그 갯수를 변수 sum_of_y에 담는다.
#       4-1. sum_of_p와 sum_of_y를 비교한다.
#       4-2. 만약 이 두 값이 같으면 True, 다르면 False를 반환한다.

def solution(s):
    
    s_list = list(s)
    sum_of_p = 0
    sum_of_y = 0
    
    for i in range(len(s_list)):
        if s_list[i] == 'p' or s_list[i] == 'P':
            sum_of_p += 1
        elif s_list[i] == 'y' or s_list[i] == 'Y':
            sum_of_y += 1

    if sum_of_p == sum_of_y:
        return True
    else:
        return False