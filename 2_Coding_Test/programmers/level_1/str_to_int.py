# 문제: 프로그래머스 Lv.1 '문자열을 정수로 바꾸기'
# 설명: 문자열 s를 숫자로 변환한 결과를 반환하는 함수, solution을 완성하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12925

# 풀이: 매개변수 s는 문자열이라고 했고, 문자열이나 실수를 '정수형'으로 바꿔주는 int()함수를 이용하여 그 값을 return함.


def solution(s):
    answer = int(s)
    return answer