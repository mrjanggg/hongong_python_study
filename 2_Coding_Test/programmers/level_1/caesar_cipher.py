# 문제: 프로그래머스 Lv.1 '시저 암호'
# 설명: 문자열 s의 각 알파벳을 일정한 거리 n만큼 밀어 암호화한 문자열을 반환하는 함수 solution을 완성합니다. 공백은 밀어도 공백으로 유지됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12926

# 풀이:
# 1. 문자열 s를 처음부터 끝까지 한 글자씩 순회하며, 변환된 문자를 담을 빈 리스트(answer)를 준비합니다.
# 2. 각 문자의 아스키 코드(ord)를 구하여, 대문자(65~90)인지 소문자(97~122)인지 확인합니다.
# 3. 만약 대문자이고, n을 더한 값이 90(Z)을 넘어가면 26(25+1)을 뺀 값을 다시 문자로 변환(chr)하여 answer에 추가합니다.
# 4. 소문자일 경우에도, n을 더한 값이 122(z)를 넘어가면 26(25+1)을 빼서 문자로 변환하여 answer에 추가합니다.
# 5. 범위를 넘어가지 않는 경우, n을 더한 값을 바로 문자로 변환하여 answer에 추가합니다.
# 6. 공백 문자는 그대로 answer에 추가합니다.
# 7. 모든 순회가 끝나면, 완성된 answer 리스트의 요소들을 하나의 문자열로 합쳐 반환합니다.

def solution(s, n):
    answer = []
    
    for i in range(len(s)):
        if 65 <= ord(s[i]) <= 90:
            if 90 < (ord(s[i]) + n):
                answer.append(chr(ord(s[i]) + n - 25 - 1))
            else:
                answer.append(chr(ord(s[i]) + n))
        elif 97 <= ord(s[i]) <= 122:
            if 122 < (ord(s[i]) + n):
                answer.append(chr(ord(s[i]) + n - 25 - 1))
            else:
                answer.append(chr(ord(s[i]) + n))        
        else:
            answer.append(s[i])

    return "".join(answer)