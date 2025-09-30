# 문제: 프로그래머스 Lv.1 'K번째수'
# 설명: 배열 array의 특정 부분을 잘라 정렬했을 때, K번째에 있는 수를 찾는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/42748

# 풀이:
# 1. commands는 i, j, k를 원소로 가진 2차원 배열입니다. commands의 각 원소를 순회합니다.
# 2. 각 원소(i, j, k)에 맞춰 array의 i번째부터 j번째까지 자릅니다. 파이썬의 슬라이싱을 활용합니다.
# 3. 자른 배열을 정렬합니다. sorted() 함수를 사용합니다.
# 4. 정렬된 배열에서 k번째에 해당하는 수를 찾습니다. 인덱스를 활용합니다.
# 5. 각 과정을 통해 나온 수를 최종 결과 배열에 담아 반환합니다.

def solution(array, commands):
    answer = []

    for items in commands:
        index_start = items[0]
        index_end = items[1]
        index_choice = items[2]
        
        temp_array = array[index_start-1 : index_end]
        sorted_array = sorted(temp_array)
        
        answer.append(sorted_array[index_choice-1])

    return answer 