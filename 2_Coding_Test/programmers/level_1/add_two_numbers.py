# 문제: 프로그래머스 Lv.1 '두 개 뽑아서 더하기'
# 설명: 정수 배열 numbers에서 서로 다른 인덱스의 두 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 반환하는 함수 solution을 완성하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68644

# 풀이: 
# 1. 중첩 for문을 사용해 numbers 리스트의 모든 원소 짝(pair)을 하나씩 확인합니다.
# 2. 각 짝의 합을 add_two_num_list에 추가합니다.
# 3. set() 함수를 이용해 add_two_num_list의 중복된 합들을 제거합니다.
# 4. 마지막으로 sorted() 함수를 이용해 합들을 오름차순으로 정렬한 뒤 반환합니다.

def solution(numbers):
    answer = []
    add_two_num_list = []
    set_add_two_num_list = []
    
    for i in range(0, len(numbers) - 1):
        for j in range(i + 1, len(numbers)):
            add_two_num_list.append(numbers[i] + numbers[j])

    set_add_two_num_list = set(add_two_num_list)
        
    return sorted(set_add_two_num_list)