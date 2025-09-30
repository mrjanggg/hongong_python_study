# 문제: 프로그래머스 Lv.0 '나이 출력'
# 설명: 머쓱이는 선생님이 몇 년도에 태어났는지 궁금해졌습니다. 2022년 기준 선생님의 나이 age가 주어질 때, 선생님의 출생 연도를 return 하는 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120820
# 풀이: 2022년 기준이고 만 나이 계산법이 아니므로, 2022에서 age만큼 뺀 후, 더하기 1을 하여 그 값을 리턴함.

def solution(age):
    answer = (2022 - age) + 1
    return answer