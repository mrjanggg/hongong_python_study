# 문제: 프로그래머스 lv.1 '크기가 작은 부분 문자열'
# 설명: 숫자 문자열 t와 p가 주어질 때, t에서 p의 길이와 같은 부분 문자열을 추출하여
#       이 숫자가 p가 나타내는 숫자보다 작거나 같은 것의 개수를 구해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/147355

# 풀이:
# 1. 반복문 내부의 불필요한 중복 연산을 방지하기 위해, 비교 기준이 되는 p의 정수값(int_p)과 길이(len_p)를 루프 시작 전에 미리 구해둔다.
# 2. t에서 p와 동일한 길이의 부분 문자열을 잘라내기 위한 시작 인덱스(i)의 범위를 지정한다.
#    - 마지막 부분 문자열이 t의 끝을 벗어나지 않도록 range의 범위를 0부터 len(t) - len_p + 1 직전까지 순회한다.
# 3. 슬라이싱(t[i : i + len_p])을 이용해 p와 길이가 같은 부분 문자열을 추출하고, 이를 정수(int)로 변환한다.
# 4. 변환된 값이 int_p 이하(<=)인 경우, 조건을 만족하므로 정답 카운트(answer)를 1 증가시킨다.
# 5. 모든 부분 문자열 검사가 끝나면 최종 카운트(answer)를 반환한다.

def solution(t, p):
    answer = 0
    
    int_p = int(p)
    len_p = len(p)
    
    for i in range(0, len(t) - len_p + 1):
        if (int(t[i : i + len_p]) <= int_p):
            answer += 1
        
    return answer