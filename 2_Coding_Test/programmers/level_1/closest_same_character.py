# 문제: 프로그래머스 Lv.1 '가장 가까운 같은 글자'
# 설명: 문자열 s의 각 위치마다 자신보다 앞에 나왔으면서, 가장 가까운 곳에 있는 같은 글자와의 거리를 배열에 담아 반환하는 함수 solution을 완성합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/142086

# 풀이:
# 1. 문자의 가장 최근 위치를 저장할 딕셔너리(dict_words)와 최종 결과를 담을 리스트(answer)를 준비합니다.
# 2. 문자열 s를 처음부터 끝까지 한 번만 순회합니다.
# 3. 만약 현재 글자가 딕셔너리에 없다면(-1로 초기화하지 않고), 처음 나온 글자이므로 answer에 -1을 추가합니다.
# 4. 그리고 딕셔너리에 해당 글자를 키로, 현재 인덱스를 값으로 저장합니다.
# 5. 만약 현재 글자가 딕셔너리에 있다면, 현재 인덱스에서 딕셔너리에 저장된 이전 인덱스를 빼서 거리를 구합니다.
# 6. 이 거리를 answer에 추가하고, 딕셔너리에는 현재 인덱스로 값을 업데이트하여 다음 계산을 준비합니다.
# 7. 모든 순회가 끝나면 완성된 answer 리스트를 반환합니다.

def solution(s):
    answer = []
    dict_words = {}
    
    for i in range(len(s)):
        if dict_words.get(s[i]) == None:
            answer.append(-1)
            dict_words[s[i]] = i
            
        else:
            answer.append(i - dict_words[s[i]])
            dict_words[s[i]] = i
    
    return answer