# 문제: 프로그래머스 Lv.1 '명예의 전당 (1)'
# 설명: 매일 발표되는 가수 점수를 '명예의 전당'이라는 목록에 k개까지 기록하고, 매일 명예의 전당 최하위 점수를 발표하는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/138477

# 풀이:
# 1. 매일 발표된 최하위 점수를 저장할 answer 리스트와, 명예의 전당 목록인 honor 리스트를 준비합니다.
# 2. score 리스트를 순회하며 매일의 점수를 처리합니다.
# 3. honor 리스트의 길이가 k보다 작을 때는, 점수를 honor에 추가하고 정렬한 뒤 최하위 점수를 answer에 추가합니다.
# 4. honor 리스트의 길이가 k와 같을 때는, 새로운 점수가 honor의 최하위 점수보다 높을 경우에만 honor의 최하위 점수를 제거하고 새로운 점수를 추가한 뒤 정렬합니다.
# 5. 매일 honor의 최하위 점수를 answer에 추가합니다.
# 6. 모든 순회가 끝나면 answer 리스트를 반환합니다.

def solution(k, score):
    answer = []
    honor = []
    
    for i in range(len(score)):
        if len(honor) < k:
            honor.append(score[i])
            honor.sort()
            answer.append(honor[0])
        else:
            if score[i] > honor[0]:
                honor.pop(0)
                honor.append(score[i])
                honor.sort()
                answer.append(honor[0])
            else:
                answer.append(honor[0])
                
    return answer