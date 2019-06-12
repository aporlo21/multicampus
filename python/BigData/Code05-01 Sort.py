## Selection Sort ##
# list 형은 변수명에 list 넣어서 변수 할당해줘라

import random
dataList = [ random.randint(1,99) for _ in range(20) ]
print(dataList)
'''
for i in range(0, len(dataList)-1) :
    for k in range(i+1, len(dataList)) :
        if dataList[i] > dataList[k] :
            dataList[i], dataList[k] = dataList[k], dataList[i]
            # tmp = dataList[i]
            # dataList[i] = dataList[k]
            # dataList[k] = tmp

print(dataList)
'''

## Bubble Sort ##

for i in range(0, len(dataList)-1) :
    change = False
    for k in range(0, len(dataList)-i-1) :
        if dataList[i] > dataList[k+1] :
            dataList[k], dataList[k+1] = dataList[k+1], dataList[k]
            change = True
    if change == False :
        break
print(dataList)
