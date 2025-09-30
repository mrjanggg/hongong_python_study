# 문제: 프로그래머스 Lv.1 '문자열 다루기 기본'
# 설명: 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요.
#       예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12918

# 풀이
# 1. 길이 확인: 먼저 len(s)가 4 또는 6인지 확인합니다. 이 조건이 충족되지 않으면 바로 False를 반환하여 불필요한 연산을 줄입니다.
# 2. 문자 구성 확인: 길이 조건이 충족될 경우, for문을 사용하여 문자열의 각 문자가 숫자인지 확인합니다.
# 3. 카운트 확인: 모든 문자가 숫자일 경우 증가하는 count 변수가 최종적으로 문자열의 길이(len(s))와 같은지 확인합니다.
# 4. 결과 반환: count가 len(s)와 같으면 True, 그렇지 않으면 False를 반환합니다.

def solution(s):
    count = 0
    
    for i in range(len(s)):
        for j in range(0, 9 + 1):
            if s[i] == "{}".format(j):
                count += 1
    
    if len(s) == 4 or len(s) == 6:
        if count == len(s):
            return True
        else:
            return False
    else:
        return False