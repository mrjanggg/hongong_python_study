# 문제: 프로그래머스 Lv.1 '모의고사'
# 설명: 수포자 3명의 정답 패턴과 주어진 정답(answers)을 비교하여, 
#       가장 많은 문제를 맞힌 사람(들)의 번호를 오름차순으로 배열에 담아 반환해야 합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/42840

# 풀이:
# 1. 수포자 1, 2, 3의 고유한 패턴을 리스트로 정의합니다.
# 2. 반복문(for)을 돌면서 나머지 연산자(%)를 활용하여 정답과 패턴을 비교하고, 각 수포자의 점수를 COUNT 합니다.
# 3. 계산된 점수 중 최댓값(max)을 찾습니다.
# 4. 각 수포자의 점수가 최댓값과 같은지 확인하여 해당 수포자의 번호를 리스트에 추가합니다.

def solution(answers):
    # 1. 수포자들의 찍기 패턴 정의
    student_1 = [1, 2, 3, 4, 5]
    student_2 = [2, 1, 2, 3, 2, 4, 2, 5]
    student_3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    # 각 수포자의 점수를 저장할 변수 초기화
    answer_1 = answer_2 = answer_3 = 0
    
    # 2. 정답 비교 및 점수 계산 (나머지 연산자 활용)
    for i in range(len(answers)):
        # 수포자 1
        if answers[i] == student_1[i % len(student_1)]:
            answer_1 += 1
        # 수포자 2
        if answers[i] == student_2[i % len(student_2)]:
            answer_2 += 1
        # 수포자 3
        if answers[i] == student_3[i % len(student_3)]:
            answer_3 += 1
    
    # 3. 최고점수 확인 및 4. 결과 리스트 정리
    count_answer = [answer_1, answer_2, answer_3]
    max_value = max(count_answer)
    final_count_index = []
    
    for j in range(len(count_answer)):
        # 최고점수와 같으면 해당 수포자 번호(j+1)를 리스트에 추가
        if max_value == count_answer[j]:
            final_count_index.append(j + 1)
    
    # 문제 조건: 가장 높은 점수를 받은 사람이 여럿일 경우 오름차순 정렬 (이미 1, 2, 3 순서로 확인했으므로 별도 정렬 불필요)
    return final_count_index