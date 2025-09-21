# 문제: 프로그래머스 Lv.1 '이상한 문자 만들기'
# 설명: 문자열 s의 각 단어에서 짝수 번째 알파벳은 대문자로, 홀수 번째 알파벳은 소문자로 바꿔 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12930

# 풀이: 
# 1. 원본 문자열 s를 한 글자씩 순회하며 s_list라는 새로운 리스트에 저장합니다.
# 2. s_list를 다시 순회하며 단어 내 인덱스를 셀 카운터(word_index)를 관리합니다.
# 3. 공백을 만나면 결과 리스트에 공백을 추가하고 카운터를 0으로 초기화합니다.
# 4. 공백이 아닌 문자를 만나면, 카운터의 짝수/홀수에 따라 대소문자를 변환하여 결과 리스트에 추가합니다.
# 5. 모든 순회가 끝난 후, 결과 리스트의 모든 문자를 하나의 문자열로 합쳐 반환합니다.

def solution(s):
    answer = ""
    
    s_list = []
    new_s_list = []
    
    word_index = 0
    
    for i in range(len(s)):
        s_list.append(s[i])
        
    for i in range(len(s_list)):
        if s_list[i] == " ":
            new_s_list.append(s_list[i])
            word_index = 0
        else:
            if (word_index % 2) == 0:
                new_s_list.append(s_list[i].upper())
            else:
                new_s_list.append(s_list[i].lower())
            word_index += 1
            
    answer = "".join(new_s_list)
    return answer