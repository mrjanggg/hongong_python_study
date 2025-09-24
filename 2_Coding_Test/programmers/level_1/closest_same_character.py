# 문제: 프로그래머스 Lv.1 '가장 가까운 같은 글자'
# 설명: 문자열 s의 각 위치마다 자신보다 앞에 나왔으면서, 가장 가까운 곳에 있는 같은 글자와의 거리를 배열에 담아 반환합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/142086

# 풀이:
# 1. 문자와 그 위치 정보를 저장할 빈 딕셔너리(dict_words)와 결과를 담을 빈 리스트(answer)를 준비합니다.
# 2. 바깥쪽 for문으로 문자열 s를 처음부터 끝까지 순회하며, 현재 문자의 위치를 j로 설정합니다.
# 3. 현재 문자(s[j])가 딕셔너리에 처음 나타나면, answer에 -1을 추가하고 딕셔너리에 해당 문자를 키로 추가합니다.
# 4. 현재 문자가 딕셔너리에 이미 있다면, 안쪽 for문을 이용해 현재 위치(j)보다 앞선 위치(k)를 역순으로 순회합니다.
# 5. 가장 먼저 만나는 같은 글자(s[j] == s[k])를 찾으면, j-k를 계산하여 answer에 추가하고 안쪽 반복문을 멈춥니다.
# 6. 모든 문자열 순회가 끝나면 완성된 answer 리스트를 반환합니다.

def solution(s):
    answer = []
    dict_words = {}
    
    # 빈 딕셔너리에 문자열s의 각각의 요소를 키로 정한 후, 그 값으로 -1로 채우기
    for j in range(len(s)):
        # 만약 처음 집어넣는 것이라면
        if dict_words.get(s[j]) == None:
            dict_words[s[j]] = -1
            answer.append(-1)
    
        # 만약 이미 값이 있다면???
        else:
            #역순으로 값을 뺀 후 새로운 값으로 업데이트하기.
            for k in range(j-1, -1, -1):
                if s[j] == s[k]:
                    dict_words[s[j]] = j-k
                    answer.append(j-k)
                    break

    return answer