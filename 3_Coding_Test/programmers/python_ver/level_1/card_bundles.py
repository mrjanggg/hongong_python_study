# 문제: 프로그래머스 Lv.1 '카드 뭉치'
# 설명: 두 개의 카드 뭉치(cards1, cards2)에 적힌 단어들로 원하는 순서의 단어 배열(goal)을 만들 수 있는지 판별하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/159994

# 풀이:
# 1. goal 배열의 단어들을 순서대로 확인하며, cards1 또는 cards2의 맨 앞 단어와 일치하는지 확인합니다.
# 2. 만약 일치하는 단어가 cards1의 맨 앞에 있으면, answer에 해당 단어를 추가하고 cards1에서 그 단어를 제거합니다.
# 3. 만약 일치하는 단어가 cards2의 맨 앞에 있으면, answer에 해당 단어를 추가하고 cards2에서 그 단어를 제거합니다.
# 4. goal의 모든 단어를 처리한 후, answer에 담긴 단어들의 순서가 goal과 동일한지 확인하여 "Yes" 또는 "No"를 반환합니다.

def solution(cards1, cards2, goal):
    answer = []
    
    for i in range(len(goal)):
        if len(cards1) != 0: 
            if goal[i] == cards1[0]:
                answer.append(cards1[0])
                cards1.pop(0)
        
        if len(cards2) != 0:
            if goal[i] == cards2[0]:
                answer.append(cards2[0])
                cards2.pop(0)
        
    if "".join(answer) == "".join(goal):
        return "Yes"
    else:
        return "No"