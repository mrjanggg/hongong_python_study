# 문제: 프로그래머스 Lv.1 '음양 더하기'
# 설명: 어떤 정수들이 있습니다. 
#       이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 
#       실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/76501

# 풀이: 
#   1. 먼저 매개변수 absolutes의 배열 길이만큼을 잰 뒤,
#   2. for문을 활용하여 signs의 배열에서 False가 무엇인지 찾아낸다.
#   3. 그런 후, False를 찾게된 signs 배열의 그 순서에 맞추어 absolutes의 해당 번호에 음수화 시킨다.
#   4. 이것을 absolutes의 배열 길이만큼 반복한 뒤,
#   5. 마지막에 sum()함수를 이용하여 변환된 부호를 적용한 수 모두를 더한 함수를 answer에 저장한 뒤 return한다.

def solution(absolutes, signs):
    answer = 0
    
    for i in range(len(absolutes)):
        if signs[i] == False:
            absolutes[i] = -absolutes[i]
            
    answer = sum(absolutes)
    
    return answer