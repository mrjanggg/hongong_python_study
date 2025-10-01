# 문제: 프로그래머스 Lv.1 '[1차] 비밀지도'
# 설명: 정사각형 지도의 두 배열(arr1, arr2)을 2진수로 변환하고, 둘 중 하나라도 1인 부분은 '#'으로, 모두 0인 부분은 ' '으로 표시하여 비밀 지도를 만드는 문제입니다.
# 링크: https://school.programmers.co.kr/learn/courses/30/lessons/17681

# 풀이:
# 1. n x n 크기의 지도를 만들기 위해, n만큼 반복하는 for문을 사용합니다.
# 2. 각 배열(arr1, arr2)의 숫자를 bin() 함수로 2진수로 변환한 뒤, [2:] 슬라이싱으로 '0b' 접두어를 제거합니다.
# 3. 변환된 2진수 문자열의 길이가 n보다 짧을 경우, insert() 함수를 사용하여 앞에 '0'을 채워 길이를 n에 맞춥니다.
# 4. 두 2진수 리스트를 순회하며, 각 자리를 비교합니다.
# 5. 둘 중 하나라도 '1'이면 최종 지도에 '#'을, 모두 '0'이면 ' '을 추가합니다.
# 6. 한 줄의 지도가 완성되면 answer 리스트에 추가하고, 다음 줄을 위해 임시 문자열을 초기화합니다.

def solution(n, arr1, arr2):
    answer = []
    temp_answer = ''
    
    for i in range(n):
        
        bin_vaule_arr1 = list(bin(arr1[i])[2:])
        bin_vaule_arr2 = list(bin(arr2[i])[2:])
        
        len_diff1 = n - len(bin_vaule_arr1)
        len_diff2 = n - len(bin_vaule_arr2)
        
        for x in range(len_diff1):
            bin_vaule_arr1.insert(0, '0')
        for y in range(len_diff2):
            bin_vaule_arr2.insert(0, '0')
            
        for l in range(len(bin_vaule_arr1)):
            if (bin_vaule_arr1[l] == '1') or (bin_vaule_arr2[l] == '1'):
                temp_answer += '#'
            else:
                temp_answer += ' '
        
        answer.append(temp_answer)
        temp_answer = ''
        
    return answer


'''
#아래는 AI가 추천해준 코드

def solution(n, arr1, arr2):
    answer = []
    
    # 1. for문으로 두 리스트의 각 원소를 한 번씩 순회합니다.
    for i in range(n):
        # 2. | (OR) 비트 연산자로 두 숫자를 합쳐, 지도를 겹칩니다.
        combined_map = arr1[i] | arr2[i]
        
        # 3. bin()으로 2진수 '문자열'로 변환하고, 앞의 '0b'를 제거합니다.
        binary_str = bin(combined_map)[2:]
        
        # 4. rjust()로 전체 길이를 n으로 맞추고, 빈 앞 공간을 '0'으로 채웁니다.
        padded_str = binary_str.rjust(n, '0')
        
        # 5. replace()로 '1'은 '#'으로, '0'은 공백(' ')으로 바꿉니다.
        result_str = padded_str.replace('1', '#').replace('0', ' ')
        
        answer.append(result_str)
        
    return answer
'''