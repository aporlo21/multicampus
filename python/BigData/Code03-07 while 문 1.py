"""
hap = 0
# for i in range(101) :
#    hap += i

i = 0
while i < 101 :
    hap += i
    i += 1
print(hap)

#while : 무한반복
"""
i = 0
while True :
    hap += i
    if hap > 10000 :
        break
    i += 1

print(hap)
