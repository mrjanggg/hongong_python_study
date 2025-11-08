# 문제: 프로그래머스 lv.1 '과일 장수'
# 설명: 사과 점수(score) 배열이 주어질 때, 한 상자에 m개씩 포장하여 팔아 얻을 수 있는 최대 이익을 계산한다.
#       상자 가격은 (상자 내 최저 점수 P) * (사과 개수 m)으로 결정된다.
#       최대 이익을 얻으려면 점수가 높은 사과들을 상자에 우선적으로 담아야 한다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/135808

# 풀이:
# 1. 최대 이익을 얻기 위해, 전체 사과 점수 리스트(score)를 내림차순으로 정렬한다. (탐욕 알고리즘)
# 2. m개씩 묶어 상자를 만들 수 있는 최대 횟수(len(score) // m)만큼만 반복한다.
# 3. 각 상자의 가격은 내림차순 정렬된 리스트에서 m번째, 2m번째, 3m번째... 사과의 점수, 즉 해당 상자에서 가장 낮은 점수에 의해 결정된다.
# 4. 총 이익(answer)에 (최저 점수) * m을 더하여 최종 결과를 계산한다.

def solution(k, m, score):
    answer = 0
    # 1. 점수가 높은 사과부터 사용하기 위해 내림차순 정렬
    reversed_list = sorted(score, reverse = True)

    # 2. 만들 수 있는 상자의 개수만큼 반복 (len(score) // m)
    for i in range(len(score) // m):
        # i는 0부터 시작, i+1은 1부터 시작
        # 내림차순 리스트에서 각 상자의 최저 점수 인덱스는 m-1, 2m-1, ... 이 된다.
        index_to_get = (m * (i + 1)) - 1
        
        # 3. (최저 점수) * m을 이익에 합산
        answer += (reversed_list[index_to_get] * m)

    return answer