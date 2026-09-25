# 문제: 프로그래머스 Lv.1 '나머지가 1이 되는 수 찾기'
# 설명: 자연수 n이 매개변수로 주어집니다. n(최소 3부터 시작)을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x를 return 하도록 solution 함수를 완성해주세요. 
#       답이 항상 존재함은 증명될 수 있습니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/87389

# 풀이: for문의 매개변수 i를 1부터 n-1까지 n과 나누었을 때, 나머지가 1이 되는지 조건문(if 문)으로 확인하며, 조건이 맞아떨어질 때 그 즉시 반환한다.

def solution(n):
    
    for i in range(1, n):
        if (n % i) == 1:
            return i