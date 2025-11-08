# 파일명: paint_roller_solution.py

# 문제: 프로그래머스 lv.1 '덧칠하기'
# 설명: 길이가 n 미터인 벽에서 페인트가 벗겨진 구역들(section)을 롤러(길이 m)를 사용하여 덧칠하는 최소 횟수를 구한다.
#       롤러는 벽에서 벗어날 수 없고, 구역의 일부분만 칠할 수 없으며, 벗겨진 모든 구역을 덮어야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/161989

# 풀이:
# 1. 롤러 사용 횟수를 최소화하기 위해 '탐욕 알고리즘(Greedy Algorithm)'을 사용한다.
# 2. 칠해야 하는 구역들(section)을 순서대로(이미 정렬되어 있음) 순회한다.
# 3. 현재 칠해야 할 구역(area)이 '이전 롤러칠이 커버한 마지막 구역(painted_until)'보다 크면,
#    새로운 롤러칠이 필요하다는 의미이므로 횟수(count)를 1 증가시킨다.
# 4. 롤러를 새로 칠할 때, 해당 구역(area)을 포함하여 롤러 길이(m)만큼 칠해진
#    새로운 마지막 구역(area + m - 1)을 painted_until에 저장한다.

def solution(n, m, section):
    
    painted_until = 0
    count = 0
    
    for area in section:
        if area > painted_until:
            painted_until = area + m - 1
            count += 1
            
    return count