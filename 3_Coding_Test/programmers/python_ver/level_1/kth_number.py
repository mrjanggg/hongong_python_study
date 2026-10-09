# 문제: 프로그래머스 Lv.1 'K번째수'
# 설명: 배열 array의 특정 부분을 잘라 정렬했을 때, K번째에 있는 수를 찾는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/42748

# 풀이:
# 1. 각 명령어(command)를 수행한 결과를 순서대로 담기 위해 빈 리스트(answer)를 준비합니다.
# 2. for 반복문과 인덱스(i)를 사용해 2차원 배열 commands의 원소를 하나씩 순회합니다.
# 3. 현재 명령어에서 시작 위치 a(commands[i][0]), 끝 위치 b(commands[i][1]), 찾을 위치 c(commands[i][2])를 추출합니다.
# 4. array의 a번째부터 b번째까지를 슬라이싱(array[a - 1 : b])한 뒤, sorted()로 오름차순 정렬하여 temp_list에 저장합니다.
#    - 문제의 '1번째'는 파이썬 인덱스 '0번'에 대응하므로 시작점은 a - 1로 보정합니다.
# 5. 정렬된 temp_list에서 k번째에 해당하는 수(temp_list[c - 1])를 찾아 answer에 추가합니다.
# 6. 모든 명령어의 처리가 끝나면 완성된 answer 리스트를 반환합니다.

def solution(array, commands):
    answer = []
    
    for i in range(len(commands)):
        temp_list = []
        a = commands[i][0]
        b = commands[i][1]
        c = commands[i][2]
        
        temp_list = sorted(array[a - 1 : b])
        answer.append(temp_list[c - 1])
        
    return answer