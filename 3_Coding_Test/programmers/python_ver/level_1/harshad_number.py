# 문제: 프로그래머스 Lv.1 '하샤드 수'
# 설명: 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 
#       예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 
#       자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12947

# 풀이: 
#   1. 정수 x를 문자열로 취한 후, 그 문자열 개별들을 각각 list화 시킨다.
#   2. 그 후, 개별화 된 리스트의 요소들을 for문을 활용하여 하나씩 다시 정수화 시킨다.(리스트 요소들의 합을 알기 위하여)
#   3. 그 후, 리스트의 요소들을 다 더하는 함수 sum()을 활용하여 새로운 변수에 저장한 뒤,
#   4. 그 저장된 새로운 변수가 원래의 x와 나누어 떨어지는지를 조건문으로 검토한다.

def solution(x):
    answer = True
    
    list_x = list(str(x))
    
    for i in range(len(list_x)):
        list_x[i] = int(list_x[i])
        
    sum_list_x = sum(list_x)
    if x % sum_list_x == 0:
        return True
    else:
        return False