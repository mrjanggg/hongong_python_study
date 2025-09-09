# 문제: 프로그래머스 Lv.1 '서울에서 김서방 찾기'
# 설명: String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 반환하는 함수, solution을 완성하세요.
#       seoul에 "Kim"은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12919

# 풀이:
# 1. for i in range(len(seoul))를 사용해 리스트의 '인덱스 번호(0, 1, 2...)'를 처음부터 순서대로 확인합니다.
# 2. if seoul[i] == "Kim" 조건문을 통해, 현재 인덱스(i)에 해당하는 리스트의 원소 값이 "Kim"과 일치하는지 검사합니다.
# 3. 일치하는 인덱스를 찾으면, f-string이나 .format()을 이용해 "김서방은 x에 있다"는 문자열을 완성하고,
# 4. 완성된 문자열을 즉시 return하여 함수를 종료합니다. ("Kim"은 오직 한 번만 나타나므로 더 이상 탐색할 필요가 없습니다.)

def solution(seoul):
    
    for i in range(len(seoul)):
        if seoul[i] == "Kim":
            answer = ("김서방은 {}에 있다".format(i))
            return answer