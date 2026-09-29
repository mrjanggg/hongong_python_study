# 문제: 프로그래머스 Lv.1 '문자열 다루기 기본'
# 설명: 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요.
#       예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12918

# 풀이:
# 1. 문자열의 길이(len(s))가 4이거나 6인지 먼저 확인한다.
# 2. 길이가 4나 6이 맞다면, 파이썬 내장 메서드인 s.isdigit()을 실행하여 전부 숫자로만 이루어져 있는지 판별한 결과를 그대로 돌려준다. (전부 숫자면 True, 문자가 섞여 있으면 False 반환)
# 3. 만약 길이가 4도 아니고 6도 아니라면, 숫자인지 검사할 필요도 없이 곧바로 False를 돌려준다.

def solution(s):
    
    if ( len(s) == 4 or len(s) == 6 ):
        return s.isdigit()
    else:
        return False