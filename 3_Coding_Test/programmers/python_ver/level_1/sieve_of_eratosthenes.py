# 문제: 프로그래머스 lv.1 '소수 찾기'
# 설명: 1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환한다.
#       (n은 2이상 1000000 이하의 자연수)
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12921

# 풀이:
# 1. 에라토스테네스의 체(Sieve of Eratosthenes)를 사용하여 O(N log log N)의 시간 복잡도로 효율적으로 소수를 판별한다.
# 2. n+1 크기의 불리언 리스트(is_prime_list)를 생성하여 0과 1을 제외한 모든 수를 True(소수)로 초기화한다.
# 3. 2부터 n의 제곱근(int(n**0.5))까지 반복하면서,
# 4. 소수로 판별된 수(i)의 배수들(j = i*2, i*3, ...)을 모두 False(소수 아님)로 지워나간다.
# 5. 최종적으로 리스트에서 True로 남아있는 원소의 개수를 세어 반환한다.

def solution(n):
    
    # [개선된 준비 코드]
    # 1. 'n+1' 칸의 리스트를 만들어 0번부터 n번까지의 자리를 확보합니다.
    #    [True] * (n + 1) 는 [True, True, ...] 리스트를 n+1개만큼 한 번에 만듭니다.
    #    (append를 n번 하는 것보다 훨씬 빠릅니다.)
    is_prime_list = [True] * (n + 1)
    answer = 0

    # 2. 0번과 1번은 소수가 아니므로, 미리 '지웁니다'(False).
    is_prime_list[0] = False
    is_prime_list[1] = False
    
    
    for i in range(2, int(n ** 0.5) + 1):

            # 4. 만약 i번 학생이 아직 지워지지 않았다면 (is_prime_list[i]가 True라면)
            #    -> 'i'는 소수입니다!
            if is_prime_list[i] == True:

                # 5. 'i'가 소수이므로, 'i'의 모든 배수들을 '지워야' 합니다.
                #    (예: i=2일 때 -> 4, 6, 8, ... / i=3일 때 -> 6, 9, 12, ...)
                #
                #    j 루프는 'i'의 첫 배수(i*2)부터, 'n'까지, 'i'만큼 점프하며 돕니다.
                for j in range(i * 2, n + 1, i):
                    is_prime_list[j] = False # 배수들을 모두 False로 '지운다'

    # 6. 2번부터 n번까지 '살아남은(True)' 학생들의 수를 셉니다.
    for k in range(2, n + 1):
        if is_prime_list[k] == True:
            answer += 1 

    return answer