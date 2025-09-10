# 문제: 프로그래머스 Lv.1 '문자열 내림차순으로 배치하기'
# 설명: 문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴하는 함수, solution을 완성해주세요.
#       s는 영문 대소문자로만 구성되어 있으며, 대문자는 소문자보다 작은 것으로 간주합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12917

# 풀이
# 1. 정렬: 파이썬의 내장 함수인 **sorted()**를 사용하여 문자열 s를 정렬합니다. reverse=True 옵션을 통해 내림차순으로 정렬합니다.
# 2. 리스트 반환: sorted() 함수는 정렬된 문자들을 요소로 갖는 리스트를 반환합니다.
# 3. 문자열 결합: "".join() 함수를 사용하여 정렬된 문자들의 리스트를 하나의 문자열로 결합합니다.
# 4. 결과 반환: 완성된 문자열을 반환합니다.

def solution(s):
    answer = sorted(s, reverse = True)
    new_answer = "".join(answer)
    
    return new_answer