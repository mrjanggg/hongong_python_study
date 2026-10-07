# 문제: 프로그래머스 Lv.1 '시저 암호'
# 설명: 문자열 s의 각 알파벳을 일정한 거리 n만큼 밀어 암호화한 문자열을 반환하는 함수 solution을 완성합니다. 공백은 밀어도 공백으로 유지됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12926

# 풀이:
# 1. 암호화된 글자들을 순서대로 모을 결과 리스트(answer)를 준비합니다.
# 2. 알파벳 대문자 문자열(upper)과 소문자 문자열(lower)을 각각 정의합니다.
# 3. for 반복문으로 원본 문자열 s의 각 문자(c)를 하나씩 순회합니다.
# 4. c.isupper()인 경우, upper에서 c의 위치(.index)를 찾아 n만큼 더한 뒤 26으로 나눈 나머지로 새 문자를 구합니다.
# 5. c.islower()인 경우, lower에서 c의 위치(.index)를 찾아 n만큼 더한 뒤 26으로 나눈 나머지로 새 문자를 구합니다.
# 6. 알파벳이 아닌 공백(' ')인 경우 변환 없이 그대로 공백을 추가합니다.
# 7. 변환이 끝난 리스트의 모든 글자를 "".join()으로 결합하여 반환합니다.

def solution(s, n):
    answer = []
    upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    lower = "abcdefghijklmnopqrstuvwxyz"
    
    for c in s:
        if c.isupper():
            idx = (upper.index(c) + n) % 26
            answer.append(upper[idx])
        elif c.islower():
            idx = (lower.index(c) + n) % 26
            answer.append(lower[idx])
        else:
            answer.append(" ")
            
    return "".join(answer)