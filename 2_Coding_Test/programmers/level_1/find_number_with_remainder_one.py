# 문제: 프로그래머스 Lv.1 '나머지가 1이 되는 수 찾기'
# 설명: 자연수 n이 매개변수로 주어집니다. n(최소 3부터 시작)을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x를 return 하도록 solution 함수를 완성해주세요. 
#       답이 항상 존재함은 증명될 수 있습니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/87389

# 풀이: n은 최소 3부터 시작한다고 했으니, 자연수 x는 1일 때 항상 나머지가 0이므로 의미가 없어지기 때문에 2부터 시작한다고 설정했다.
#       그 후, '%'연산자를 이용하여 나머지가 1이 아니라면 x를 1씩 증가시켜, 나머지가 1이 될 때 만족하는 x를 정답 answer로 리턴한다.


def solution(n):
    answer = 0
    x = 2
    
    while (n % x) != 1:
        x += 1
    
    answer = x
    
    return answer