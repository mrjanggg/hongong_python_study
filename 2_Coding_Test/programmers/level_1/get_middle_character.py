# 문제: 프로그래머스 Lv.1 '가운데 글자 가져오기'
# 설명: 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 
#       단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12903

# 풀이
# 1. 문자열의 길이를 파악한 다음
# 2. 그 길이를 반절로 나눈 후,
# 3. 문자열의 길이가 홀수일 경우에, 문자열 길이의 반절인 인덱스를 찾아 그 값을 return한다.
# 4. 문자열의 길이가 짝수일 경우에, 그 반절의 -1에서 +1을 더한 값의 범위의 인덱스를 찾아 그 값을 return한다.

def solution(s):
    len_s = len(s)
    half = int(len_s/2)
    
    if len_s % 2 == 0:
        return s[half - 1 : half + 1]
    else:
        return s[half]