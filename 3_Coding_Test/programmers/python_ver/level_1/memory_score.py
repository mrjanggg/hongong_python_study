# 문제: 프로그래머스 Lv.1 '추억 점수'
# 설명: 그리워하는 사람들의 이름과 점수가 주어졌을 때, 각 사진에 있는 인물들의 점수를 합산하여 추억 점수를 계산하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/176963

# 풀이:
# 1. name과 yearning 두 리스트를 zip()과 dict() 함수를 사용하여 하나의 딕셔너리(score_dict)로 만듭니다.
# 2. photo 배열을 순회하며 각 사진(people)의 점수를 계산합니다.
# 3. 각 사진에 있는 인물(person)들을 다시 순회하면서, score_dict.get()을 통해 점수를 가져옵니다.
# 4. get(person, 0)과 같이 기본값을 0으로 설정하여, 그리워하지 않는 사람이 사진에 있어도 오류 없이 점수를 0으로 처리합니다.
# 5. 각 사진의 총 점수를 계산한 뒤 answer 리스트에 추가합니다.

def solution(name, yearning, photo):
    answer = []
    
    # 1. name과 yearning을 딕셔너리로 만듭니다.
    score_dict = dict(zip(name, yearning))
    
    # 2. photo 배열을 순회하며 각 사진의 점수를 계산합니다.
    for people in photo:
        current_score = 0
        # 3. 사진 속 인물들의 점수를 합산합니다.
        for person in people:
            current_score += score_dict.get(person, 0)
        
        answer.append(current_score)
            
    return answer