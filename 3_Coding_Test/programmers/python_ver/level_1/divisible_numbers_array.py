# 문제: 프로그래머스 Lv.1 '나누어 떨어지는 숫자 배열'
# 설명: array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
#       divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12910

# 풀이:
# 1. 나누어떨어지는 숫자들을 담아둘 빈 바구니(answer = [])를 준비한다.
# 2. 리스트 arr에 들어있는 숫자들을 for문으로 하나씩(i) 꺼내어 확인한다.
# 3. 꺼낸 숫자(i)를 divisor로 나눈 나머지가 0이라면, answer 바구니에 추가한다(append).
# 4. 바구니에 담긴 숫자가 1개 이상 있다면(len(answer) > 0),
#    sorted() 함수로 작은 수부터 차례대로 정렬(오름차순)하여 돌려준다.
# 5. 나누어떨어지는 수가 없어 바구니가 비어있다면, 문제 규칙에 따라 [-1]을 돌려준다.

def solution(arr, divisor):
    answer = []
    
    for i in arr:
        if( (i % divisor) == 0 ):
            answer.append(i)
            
    if len(answer) > 0:
        return sorted(answer)
    else:
        return [-1]