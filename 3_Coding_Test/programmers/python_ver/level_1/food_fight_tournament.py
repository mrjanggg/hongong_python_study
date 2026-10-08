# 문제: 프로그래머스 Lv.1 '푸드 파이트 대회'
# 설명: 주어진 음식 배열을 이용해 두 선수가 공정하게 먹을 수 있는 음식 배치를 문자열로 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/134240

# 풀이:
# 1. 한쪽 선수가 먹을 음식 번호들을 순서대로 담기 위해 빈 리스트(answer)를 준비합니다.
# 2. 물(0번 음식)을 제외한 1번 음식부터 끝까지 for 루프로 순회합니다.
# 3. 양 선수가 공평하게 나눠 먹어야 하므로, 각 음식의 개수를 2로 나눈 몫(food[i] // 2)만큼 해당 음식의 번호(i)를 answer에 추가합니다.
#    - 정수 나눗셈(//)을 사용하면 홀수 개수의 음식은 자동으로 버려져 별도의 짝수 처리가 필요 없습니다.
# 4. 왼쪽 선수의 배치(answer), 중앙의 물([0]), 오른쪽 선수의 역순 배치(answer[::-1])를 리스트 덧셈 연산으로 결합해 full_course 리스트를 만듭니다.
# 5. 숫자 리스트의 각 원소를 map(str, ...)으로 문자열로 변환한 뒤, "".join()을 통해 하나의 완성된 문자열로 결합하여 반환합니다.

def solution(food):
    answer = []
    
    # 1. 각 음식을 2로 나눈 몫만큼 번호 추가 (홀수 처리는 // 가 알아서 해결)
    for i in range(1, len(food)):
        for j in range(food[i] // 2):
            answer.append(i)
            
    # 2. 왼쪽 음식 + 물(0) + 오른쪽 음식(슬라이싱 [::-1]로 뒤집기)
    full_course = answer + [0] + answer[::-1]
    
    # 3. 숫자 리스트를 문자열로 한 번에 변환하여 반환
    return "".join(map(str, full_course))



# 내가 처음에 짠 코드.
# def solution(food):
    
#     answer = []
#     reverse_answer = []
#     water = 0
#     str_answer = ''
    
#     for i in range(1, len(food), 1):
#         if food[i] % 2 != 0:
#             food[i] -= 1
    
#     for i in range(1, len(food), 1):
#         for j in range(0, food[i]//2):
#             answer.append(i)
    
#     reverse_answer = sorted(answer, reverse = True)
    
#     answer.append(water)
#     answer += reverse_answer

#     for i in answer:
#         str_answer += str(i)
        
#     return str_answer