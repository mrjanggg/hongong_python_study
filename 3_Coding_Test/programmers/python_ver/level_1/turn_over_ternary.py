# 문제: 프로그래머스 Lv.1 '3진법 뒤집기'
# 설명: 자연수 n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 반환합니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68935

# 풀이:
# 1. 3진법 변환 과정에서 발생하는 나머지를 순서대로 담을 three_list와 자릿수 지수(i), 결과값(answer)을 초기화한다.
# 2. n이 0이 될 때까지 while 반복문을 돌며 n을 3으로 나눈 나머지(n % 3)를 three_list에 추가하고, n을 3으로 나눈 몫(n // 3)으로 갱신한다.
#    - 나머지가 나오는 족족 차례대로 추가되므로, 자연스럽게 '앞뒤가 뒤집힌 3진법'의 각 자릿수가 배열에 순서대로 쌓인다.
# 3. 10진수로 복원하기 위해 슬라이싱([::-1])을 사용하여 three_list를 뒤에서부터 역순으로 순회한다.
# 4. 각 자릿수 값(item)에 자릿수 가중치인 3의 거듭제곱(3 ** i)을 곱하여 answer에 누적하고, 지수(i)를 1씩 증가시킨다.
# 5. 모든 자릿수의 누적이 끝나면 최종 10진수 값인 answer를 반환한다.

def solution(n):
    answer = 0
    three_list = []
    i = 0
    
    while n != 0:
        three_list.append(n % 3)
        n = n//3

    for item in three_list[::-1]:
        answer += (3 ** i) * item
        i += 1

    return answer