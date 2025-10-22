def solution(n, m, section):
    
    true_list = []
    count = 0
    circuit = 0
    true_list_check_count = 0
    start_index = section[0]

    #1. 길이가 n+1만큼의 True 리스트 만들기
    for i in range(n+1):
        true_list.append(True)
    
    #2. section의 해당하는 값에 False로 바꾸기
    for j in range(len(section)):
        true_list[section[j]] = False
    
    
    return true_list
    
    '''
    while True:
        start_index = section[0] + circuit
        #3. 길이가 m만큼을 section 첫 index부터 True로 바꾸기
        for k in range(0, m):
            true_list[start_index] = True
            start_index += 1
        #4. 한 번 순회를 완료하면 회전카운트 +1 증가시키기.
        circuit += 1

        #5. 모든 리스트가 True인지 검사.
        for l in range(0, len(true_list)):
            if true_list[l] == False:
                break
            else:
                true_list_check_count += 1

        #6. true_list의 길이만큼 true_list_check_count과 같다면 총 회전횟수를 반환하기.
        #   아니라면, 반복문 처음으로 돌아가기.
        if (len(true_list) == true_list_check_count):
            return circuit
'''        