# 문제: 프로그래머스 Lv.1 '가장 가까운 같은 글자'
# 설명: 문자열 s의 각 위치마다 자신보다 앞에 나왔으면서, 가장 가까운 곳에 있는 같은 글자와의 거리를 배열에 담아 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/142086

# 풀이:
# 1. 각 글자의 가장 최근 등장 인덱스를 기록할 딕셔너리(last_seen)와 결과 거리를 담을 리스트(answer)를 초기화합니다.
# 2. 인덱스(i)를 사용해 문자열 s를 처음부터 끝까지 한 글자(c = s[i])씩 순회합니다.
# 3. 현재 글자(c)가 딕셔너리(last_seen)에 이미 존재하는 경우:
#    - 현재 인덱스(i)에서 직전에 기록된 위치(last_seen[c])를 빼서 거리(distance)를 구하고 answer에 추가합니다.
# 4. 현재 글자(c)가 딕셔너리에 없는 경우:
#    - 처음 등장한 글자이므로 answer에 -1을 추가합니다.
# 5. 거리 계산 여부와 상관없이, 현재 글자(c)의 위치를 최신 인덱스(i)로 딕셔너리에 갱신(last_seen[c] = i)합니다.
# 6. 문자열 순회가 모두 끝나면 완성된 answer 리스트를 반환합니다.

def solution(s):
    answer = []
    last_seen = {}
    
    for i in range(len(s)):
        c = s[i]
        
        if c in last_seen:
            distance = i - last_seen[c]
            answer.append(distance)
        else:
            answer.append(-1)
        
        last_seen[c] = i
    
    return answer