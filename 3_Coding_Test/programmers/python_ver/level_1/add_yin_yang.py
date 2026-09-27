# 문제: 프로그래머스 Lv.1 '음양 더하기'
# 설명: 어떤 정수들이 있습니다. 
#       이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 
#       실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/76501

# 풀이:
# 1. 부호가 적용된 진짜 숫자들을 담을 빈 바구니(answer = [])를 준비한다.
# 2. signs의 길이만큼 순서대로 번호(i)를 매기며 하나씩 살펴본다.
# 3. 만약 i번째 부호(signs[i])가 False(음수)라면, 
#    i번째 숫자(absolutes[i])에 마이너스(-)를 붙여 answer 바구니에 넣는다(append).
# 4. 반대로 True(양수)라면, 원래 숫자 그대로 answer 바구니에 넣는다(append).
# 5. 모든 숫자를 다 담은 뒤, sum() 함수로 바구니 안의 모든 숫자를 합산하여 돌려준다.

def solution(absolutes, signs):
    answer = []
    
    for i in range(len(signs)):
        if signs[i] == False:
            answer.append(-absolutes[i])
        else:
            answer.append(absolutes[i])
    
    return sum(answer)