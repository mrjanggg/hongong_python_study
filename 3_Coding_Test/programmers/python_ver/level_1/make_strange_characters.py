# 문제: 프로그래머스 Lv.1 '이상한 문자 만들기'
# 설명: 문자열 s의 각 단어에서 짝수 번째 알파벳은 대문자로, 홀수 번째 알파벳은 소문자로 바꿔 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12930

# 풀이:
# 1. 변환된 문자들을 담을 결과 리스트(answer)와 단어 내에서의 상대적 글자 순서를 추적할 카운터(k = 0)를 초기화한다.
# 2. 인덱스(i)를 통해 문자열 s의 각 문자를 처음부터 끝까지 한 글자씩 순회한다.
# 3. 현재 문자가 공백(' ')인 경우:
#    - 공백의 개수와 위치를 그대로 보존하기 위해 answer에 공백을 추가한다.
#    - 다음 단어의 시작을 준비하기 위해 단어 내 인덱스 카운터(k)를 0으로 리셋한다.
# 4. 현재 문자가 알파벳인 경우:
#    - k가 짝수(k % 2 == 0)면 대문자(upper())로, 홀수면 소문자(lower())로 변환하여 answer에 추가한다.
#    - 글자 처리가 끝났으므로 단어 내 다음 글자 순서를 위해 k를 1 증가시킨다.
# 5. 순회가 끝나면 리스트에 모인 문자들을 "".join(answer)을 통해 하나의 문자열로 결합하여 반환한다.

def solution(s):
    answer = []
    k = 0
    
    for i in range(len(s)):
        if s[i] == ' ':
            k = 0
            answer.append(s[i])
        else:
            if (k % 2 == 0):
                answer.append(s[i].upper())
            else:
                answer.append(s[i].lower())    
            k += 1
            
    return "".join(answer)