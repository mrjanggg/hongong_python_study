# 문제: 프로그래머스 Lv.1 '숫자 문자열과 영단어'
# 설명: 주어진 문자열 s에 포함된 영단어들을 해당하는 숫자로 변환하고, 그 결과를 정수로 반환하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/81301

# 풀이:
# 1. 영단어와 숫자를 매핑하는 딕셔너리(word_to_num)를 만듭니다.
# 2. 딕셔너리의 각 항목을 순회하며, 문자열 s에 포함된 영단어를 해당 숫자로 바꿉니다.
# 3. 모든 변환이 끝나면, 최종 문자열을 정수(int)로 변환하여 반환합니다.

def solution(s):
    word_to_num = {
        'zero': '0', 'one': '1', 'two': '2', 'three': '3',
        'four': '4', 'five': '5', 'six': '6', 'seven': '7',
        'eight': '8', 'nine': '9'
    }

    for key, value in word_to_num.items():
        s = s.replace(key, value)
        
    return int(s)