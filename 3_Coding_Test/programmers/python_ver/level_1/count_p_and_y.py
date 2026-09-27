# 문제: 프로그래머스 Lv.1 '문자열 내 p와 y의 개수'
# 설명: 대문자와 소문자가 섞여있는 문자열 s가 주어집니다. 
#       s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 
#       'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 
#       단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12916

# 풀이:
# 1. 'p'와 'y'를 셀 숫자 바구니(p_count, y_count)를 각각 0으로 준비한다.
# 2. 문장(s)의 글자들을 처음부터 끝까지 하나씩 차례대로 꺼내어 확인한다.
# 3. 꺼낸 글자가 'p'나 'P'면 p_count를 1개 늘리고, 'y'나 'Y'면 y_count를 1개 늘린다.
# 4. 문장 속 글자 확인이 모두 끝나면, 두 바구니의 개수가 똑같은지 비교한다.
#    (개수가 같으면 True, 다르면 False를 바로 돌려준다. 둘 다 하나도 없어서 0개로 같아도 True가 된다.)

def solution(s):
    p_count = 0
    y_count = 0
    
    for i in s:
        if( (i == 'p') or (i == 'P') ):
            p_count += 1
        elif( (i == 'y') or (i == 'Y') ):
            y_count += 1

    return p_count == y_count