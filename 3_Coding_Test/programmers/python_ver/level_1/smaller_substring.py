# 문제: 프로그래머스 lv.1 '크기가 작은 부분 문자열'
# 설명: 숫자 문자열 t와 p가 주어질 때, t에서 p의 길이와 같은 부분 문자열을 추출하여
#       이 숫자가 p가 나타내는 숫자보다 작거나 같은 것의 개수를 구해야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/147355

# 풀이:
# 1. 비교 대상(p)과 필요한 길이 정보(len_p, len_t)를 미리 정수형으로 변환 및 계산하여 저장한다. (최적화)
# 2. 반복문은 t에서 p 길이만큼의 부분 문자열을 정확히 추출할 수 있는 횟수만큼만 순회한다.
#    - 반복 횟수: len_t - len_p + 1
# 3. 반복문 내에서 부분 문자열을 슬라이싱하여 정수로 변환한다.
# 4. 변환된 부분 문자열 숫자가 목표 숫자(target_num)보다 작거나 같으면(<=), 개수(answer)를 1 증가시킨다.

def solution(t, p):
    answer = 0
    
    # 1. 변하지 않는 값은 미리 계산해둡니다. (최적화)
    target_num = int(p)
    len_p = len(p)
    len_t = len(t)
    
    # 2. 반복문 실행
    for i in range(len_t - len_p + 1):
        # 매번 len(p)를 구하거나 int(p)를 하지 않고, 저장된 변수를 씁니다.
        sub_num = int(t[i : i + len_p])
        
        if sub_num <= target_num:
            answer += 1
            
    return answer