# day6.py
'''
미션  ( 6일차 )
1) 기하학 처리
- 오른쪽 90도 회전
- 이동 --> 상하 / 좌우
- 축소 --> 배율 ( 2/ 4/ 8....)
- 확대 ==> 배율 ( 2/4)
- (선택) 회전 --> 각도입력 
'''
'''
def rotateImage():
#각도입력
	global im
	ds = askinteger
	rad = math.radians(ds)
	cos = math.cos(rad)
	sin = math.sin(rad)
	x_center = round(inW/2)
	y_center = round(inH/2)

# 출력 이미지 생성
for i in range(inH):
	for k in range(inW):
		try:
			new_x = cos*(i-y_center) + sin*(k-x_center)
			new_x = round(new_x) + x_center
			new_y = -sin*(i-y_center) + cos*(k-x_center)
			new_y = round(new_y) + y_center
			if new_y < 0 or new_y < 0:
				continue
			else:
				outImage[new_x][new_y] = inImage[i][k]
		except:
			pass

	displayImage()
			

			