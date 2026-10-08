# 문제: 프로그래머스 Lv.1 '두 개 뽑아서 더하기'
# 설명: 정수 배열 numbers에서 서로 다른 인덱스의 두 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 반환하는 함수 solution을 완성하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68644

# 풀이:
# 1. 두 수의 합을 담되, 중복되는 결과를 자동으로 걸러내기 위해 집합 자료구조인 set()으로 answer를 초기화합니다.
# 2. 서로 다른 인덱스의 두 수를 뽑기 위해 2중 for 루프를 사용합니다.
#    - 첫 번째 수의 인덱스 i는 0부터 len(numbers) - 2까지 순회합니다.
#    - 두 번째 수의 인덱스 j는 중복 선택 및 이전 조합과의 중복 검사를 피하기 위해 i + 1부터 끝까지 순회합니다.
# 3. 뽑은 두 수의 합(numbers[i] + numbers[j])을 answer.add()를 통해 집합에 추가합니다.
#    - 세트(set) 자료형의 특성상 이미 존재하는 합은 자동으로 무시되어 중복이 배제됩니다.
# 4. 모든 덧셈 조합의 탐색이 끝나면 list(answer)로 변환한 뒤, sorted()를 사용해 오름차순으로 정렬한 리스트를 최종 반환합니다.

def solution(numbers):
    answer = set()  # 중복을 허용하지 않는 집합 생성
    
    for i in range(len(numbers) - 1):
        for j in range(i + 1, len(numbers)):
            answer.add(numbers[i] + numbers[j])  # 세트에 넣으면 중복은 알아서 무시됨
            
    return sorted(list(answer))  # 리스트로 변환 후 오름차순 정렬하여 반환

# 처음에 내가 짠 코드
# def solution(numbers):
#     answer = []
#     new_answer = []
    
#     sorted_numbers = sorted(numbers)
    
#     for i in range(len(sorted_numbers) - 1):
#         for j in range(i + 1, len(sorted_numbers)):
#             answer.append(sorted_numbers[i] + sorted_numbers[j])
    
#     sorted_answer = sorted(answer)
#     new_answer.append(sorted_answer[0])
    
#     for i in range(1, len(sorted_answer)):
#         if sorted_answer[i - 1] != sorted_answer[i]:
#             new_answer.append(sorted_answer[i])
        
#     return new_answer