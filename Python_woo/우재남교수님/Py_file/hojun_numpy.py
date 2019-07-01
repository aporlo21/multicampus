from tkinter import *
from tkinter.simpledialog import *
from tkinter.filedialog import *
import math
import os
import os.path
from PIL import Image, ImageFilter, ImageEnhance, ImageOps
import numpy as np
import time
import csv
####################
#### 함수 선언부 ####
####################
# 메모리를 할당해서 리스트(참조)를 반환하는 함수
def malloc(h, w, initValue=0, dataType=np.uint8) :
    retMemory = np.zeros((h,w),dtype=dataType)
    retMemory += initValue
    return retMemory


# 파일을 메모리로 로딩하는 함수
def loadImageColor(fname) :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    global photo
    inImage = []
    photo = Image.open(fname)
    inW = photo.width;
    inH = photo.height
    # 메모리 확보
    temp = np.array(photo).ravel()
    inImage = np.vstack((temp[::3],temp[1::3],temp[2::3])).reshape(3,inH,inW)


# 파일을 선택해서 메모리로 로딩하는 함수

def openImageColor():
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    filename = askopenfilename(parent=window,
                               filetypes=(("칼라 파일", "*.jpg;*.png;*.bmp;*.tif"), ("모든 파일", "*.*")))
    if filename == '' or filename == None:
        return
    loadImageColor(filename)
    equalImageColor()
    displayImageColor()


import struct
def saveImageColor():
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    if outImage == None :
        return
    outArray= []
    for i in range(outH) :
        tmpList = []
        for k in range(outW) :
            tup = tuple([outImage[R][i][k], outImage[G][i][k], outImage[B][i][k], ])
            tmpList.append(tup)
        outArray.append(tmpList)

    outArray = np.array(outArray)
    savePhoto = Image.fromarray(outArray.astype(np.uint8), 'RGB')
    saveFp = asksaveasfile(parent=window, mode='wb',
                           defaultextension='.', filetypes=(("그림 파일", "*.png;*.jpg;*.bmp;*.tif"), ("모든 파일", "*.*")))
    if saveFp == '' or saveFp == None:
        return
    savePhoto.save(saveFp.name)

def displayImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    if canvas != None : # 예전에 실행한 적이 있다.
        canvas.destroy()
    global VIEW_X, VIEW_Y
    ## 고정된 화면 크기
    # 가로/세로 비율 계산
    ratio = outH / outW
    if outH <= VIEW_X :
        VIEW_X = outH; stepX = 1
    if outH > VIEW_X :
        if ratio < 1 :
            VIEW_X = int(512 * ratio)
        else :
            VIEW_X = 512
        stepX = outH / VIEW_X

    if outW <= VIEW_Y:
        VIEW_Y = outW; stepY = 1
    if outW > VIEW_Y:
        if ratio > 1 :
            VIEW_Y = int(512 * ratio)
        else :
            VIEW_Y = 512

        stepY = outW / VIEW_Y



    window.geometry(str(int(VIEW_Y*1.2)) + 'x' + str(int(VIEW_X*1.2)))  # 벽
    canvas = Canvas(window, height=VIEW_X, width=VIEW_Y)
    paper = PhotoImage(height=VIEW_X, width=VIEW_Y)
    canvas.create_image((VIEW_Y // 2, VIEW_X // 2), image=paper, state='normal')

    import numpy
    rgbStr = '' # 전체 픽셀의 문자열을 저장
    for i in numpy.arange(0,outH, stepX) :
        tmpStr = ''
        for k in numpy.arange(0,outW, stepY) :
            i = int(i); k = int(k)
            # r , g, b = outImage[i][k][R], outImage[i][k][G], outImage[i][k][B]
            r, g, b = outImage[R][i][k], outImage[G][i][k], outImage[B][i][k]
            tmpStr += ' #%02x%02x%02x' % (r,g,b)
        rgbStr += '{' + tmpStr + '} '
    paper.put(rgbStr)
    # canvas.bind('<Button-1>', mouseClick)
    # canvas.bind('<ButtonRelease-1>', mouseDrop)
    canvas.pack(expand=1, anchor=CENTER)
    status.configure(text='이미지 정보:' + str(outW) + 'x' + str(outH))

###############################################
##### 컴퓨터 비전(영상처리) 알고리즘 함수 모음 #####
###############################################
# 동일영상 알고리즘
def  equalImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    outImage = inImage[:]
    displayImageColor()

# 덧셈뺄셈 알고리즘
def  addImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = [];    outImage = malloc(outH, outW)
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    value = askinteger("밝게/어둡게", "값-->", minvalue=-255, maxvalue=255)
    start = time.time()
    inImage = inImage.astype(np.int16) # 오버플로우 방지
    outImage = inImage + value

    # 조건으로 범위 지정

    outImage = np.where(outImage > 255, 255, outImage)
    outImage = np.where(outImage < 0, 0, outImage)
    outImage = outImage.astype(np.uint8)

    displayImageColor()

# 반전영상 알고리즘
def  revImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = [];    outImage = malloc(outH, outW)
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    inImage = inImage.astype(np.int16)
    outImage = 255 - inImage
    outImage = outImage.astype(np.uint8)
    displayImageColor()

# 이진화 알고리즘
def  bwImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = [];    outImage = malloc(outH, outW)
    ####### 진짜 컴퓨터 비전 알고리즘 #####

    # avg = np.mean(inImage)

    inImage = inImage.astype(np.int16)

    outImage = inImage

    # greyscale으로 변환
    # 메모리 확보
    grey =[]
    for _ in range(3):
        grey.append(malloc(inH,inW))
    # greyscale
    for RGB in range(3):
        grey[RGB] = (inImage[R]+inImage[G]+inImage[B])//3
    # 평균
    avg = np.mean(grey).astype(np.int16)

    # 이진화
    outImage = np.where(grey > avg, 255, outImage)
    outImage = np.where(grey < avg, 0, outImage)

    outImage = outImage.astype(np.uint8)

    displayImageColor()

# 파라볼라 알고리즘 with LUT
def  paraImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = inImage[:]
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    x = np.array([i for i in range(0, 256)])
    LUT = 255 - 255*np.power(x/128 - 1, 2)
    LUT = LUT.astype(np.uint8)
    outImage = LUT[inImage]
    displayImageColor()

# 상하반전
def upDownImage() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = inImage[:]
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    outImage = inImage[::-1, :]
    displayImageColor()

# 축소
def zoomOutImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    scale = askinteger("축소", "값-->", minvalue=2, maxvalue=16)
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH//scale;  outW = inW//scale;
    ###### 메모리 할당 ################
    outImage = [];    outImage = malloc(outH, outW)
    ####### 진짜 컴퓨터 비전 알고리즘 #####

    inImage = inImage.astype(np.int16)

    outImage = inImage[::scale,::scale]

    outImage = outImage.astype(np.uint8)

    displayImageColor()

# 확대
def  zoomInImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    scale = askinteger("확대", "값-->", minvalue=2, maxvalue=8)
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH*scale;  outW = inW*scale;
    ###### 메모리 할당 ################
    outImage = [];    outImage = malloc(outH, outW)
    ####### 진짜 컴퓨터 비전 알고리즘 #####
    inImage = inImage.astype(np.int16)

    outImage = np.kron(inImage, np.ones((scale,scale)))

    outImage = outImage.astype(np.uint8)

    displayImageColor()

# stretch
def stretchImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = []
    for _ in range(3):
        outImage.append(malloc(outH, outW))
    ####### 진짜 컴퓨터 비전 알고리즘 #####

    inImage = inImage.astype(np.int16)

    minVal = [np.min(inImage[R]), np.min(inImage[G]), np.min(inImage[B])]
    maxVal = [np.max(inImage[R]), np.max(inImage[G]), np.max(inImage[B])]

    for RGB in range(3):
        outImage[RGB]=((inImage[RGB] - minVal[RGB]) / (maxVal[RGB] - minVal[RGB])) * 255

    outImage = np.array(outImage).astype(np.uint8)

    displayImageColor()

# 평활화
def equalizeImageColor() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정 ##
    outH = inH;  outW = inW;
    ###### 메모리 할당 ################
    outImage = []
    for _ in range(3):
        outImage.append(malloc(outH, outW))
    ####### 진짜 컴퓨터 비전 알고리즘 #####

    ## 히스토그램

    hist, bins = np.histogram(inImage.ravel(), 256,[0,256]) # bins = 빈도수

    cdf = hist.cumsum() # 누적합

    cdf_m = np.ma.masked_equal(cdf, 0) # cdf에서 값이 0인 것은 mask 처리하며 계산에서 제외됨

    # History Equalization 공식
    cdf_m = (cdf_m - cdf_m.min()) * 255 / (cdf_m.max() - cdf_m.min())

    # Mask처리를 했던 부분을 다시 0으로 변환
    cdf = np.ma.filled(cdf_m, 0).astype(np.uint8)

    outImage = cdf[inImage]

    displayImageColor()


def loadCsvColor(fname):
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    fsize = 0
    fp = open(fname, "r")
    for _ in fp:
        fsize += 1

    # inH = inW = int(math.sqrt(fsize))    # 핵심 코드
    fp.close()
    # 입력 영상 메모리 확보
    tempImage = np.loadtxt(fname, delimiter=",", dtype=np.int16)
    print(tempImage.shape)
    inH = tempImage[-1][0] + 1
    inW = tempImage[-1][1] + 1


    # 파일에서 메모리로 가져오기

# 파일을 선택해서 메모리로 로딩하는 함수
def openCsvColor():
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH,outW
    filename = askopenfilename(parent=window,
                               filetypes=(("CSV 파일", "*.csv"), ("모든 파일", "*.*")))
    if filename == "" or filename == None:
        return
    loadCsvColor(filename)
    equalImageColor()

def saveCsvColor():
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    saveFp = asksaveasfile(parent=window, mode='wb', defaultextension="*.csv", filetypes=(("CSV 파일", "*.csv"), ("모든 파일", "*.*")))
    if saveFp == "" or saveFp == None:
        return
    with open(saveFp.name, mode="w", newline="") as wFp:
        csvWriter = csv.writer(wFp)
        for i in range (outH):
            for k in range (outW):
                row_list = [i, k, outImage[i][k][R], outImage[i][k][G], outImage[i][k][B]]
                csvWriter.writerow(row_list)
    print("CSV. save OK")


####################
#### 전역변수 선언부 ####
####################
R, G, B = 0, 1, 2
inImage, outImage = [], [] ; inH, inW, outH, outW = [0] * 4
window, canvas, paper = None, None, None
filename = ""
panYN = False
sx,sy,ex,ey = [0] * 4
VIEW_X, VIEW_Y = 512, 512 # 화면에 보일 크기 (출력용)
####################
#### 메인 코드부 ####
####################
window = Tk()
window.geometry("500x500")
window.title("컴퓨터 비전(딥러닝 기법) ver 0.04")

status = Label(window, text='이미지 정보:', bd=1, relief=SUNKEN, anchor=W)
status.pack(side=BOTTOM, fill=X)

## 마우스 이벤트


mainMenu = Menu(window)
window.config(menu=mainMenu)

fileMenu = Menu(mainMenu)
mainMenu.add_cascade(label="파일", menu=fileMenu)
fileMenu.add_command(label="파일 열기", command=openImageColor)
fileMenu.add_separator()
fileMenu.add_command(label="파일 저장", command=saveImageColor)


comVisionMenu1 = Menu(mainMenu)
mainMenu.add_cascade(label="화소점 처리", menu=comVisionMenu1)
comVisionMenu1.add_command(label="덧셈/뺄셈", command=addImageColor)
comVisionMenu1.add_command(label="반전하기", command=revImageColor)
comVisionMenu1.add_command(label="파라볼라", command=paraImageColor)
# comVisionMenu1.add_command(label="모핑", command=morphImageColor)
# comVisionMenu1.add_command(label="채도조절(Pillow)", command=addSValuePillow)
# comVisionMenu1.add_command(label="채도조절(HSV)", command=addSValueHSV)



comVisionMenu2 = Menu(mainMenu)
mainMenu.add_cascade(label="통계", menu=comVisionMenu2)
comVisionMenu2.add_command(label="이진화", command=bwImageColor)
# comVisionMenu2.add_command(label="축소(평균변환)", command=zoomOutImage2)
# comVisionMenu2.add_command(label="확대(양선형보간)", command=zoomInImage2Color)
comVisionMenu2.add_separator()
# comVisionMenu2.add_command(label="히스토그램", command=histoImage)
# comVisionMenu2.add_command(label="히스토그램(내꺼)", command=histoImage2Color)
comVisionMenu2.add_command(label="명암대비", command=stretchImageColor)
# comVisionMenu2.add_command(label="End-In탐색", command=endinImage)
comVisionMenu2.add_command(label="평활화", command=equalizeImageColor)
#
comVisionMenu3 = Menu(mainMenu)
mainMenu.add_cascade(label="기하학 처리", menu=comVisionMenu3)
# comVisionMenu3.add_command(label="상하반전", command=upDownImageColor)
# comVisionMenu3.add_command(label="이동", command=moveImageColor)
comVisionMenu3.add_command(label="축소", command=zoomOutImageColor)
comVisionMenu3.add_command(label="확대", command=zoomInImageColor)
# comVisionMenu3.add_command(label="회전1", command=rotateImage)
# comVisionMenu3.add_command(label="회전2(중심,역방향)", command=rotateImage2Color)
#
comVisionMenu04 = Menu(mainMenu)
mainMenu.add_cascade(label="화소영역 처리", menu=comVisionMenu04)
# comVisionMenu04.add_command(label="엠보싱(RGB)", command=embossImageRGB)
comVisionMenu04.add_command(label="엠보싱(HSV)", command=embossImageHSV)
# comVisionMenu04.add_command(label="엠보싱(PIL)", command=embossImagePIL)
# comVisionMenu04.add_command(label="블러링", command=blurImage)
# comVisionMenu04.add_command(label="샤프닝", command=sharpImage)
# comVisionMenu04.add_command(label="가우시안", command=gausImage)
# comVisionMenu04.add_command(label="고주파", command=hFreqImage)
# comVisionMenu04.add_command(label="저주파", command=lFreqImage)
# comVisionMenu04.add_separator()
# comVisionMenu04.add_command(label="경계선", command=dImage)
# comVisionMenu04.add_cascade(label="로버츠 행", command=d01Image)
# comVisionMenu04.add_cascade(label="프리윗 행", command=d02Image)
# comVisionMenu04.add_cascade(label="소벨 행", command=d03Image)
# comVisionMenu04.add_cascade(label="라플라시아b", command=d04Image)
# comVisionMenu04.add_cascade(label="라플라시아c", command=d05Image)

comVisionMenu5 = Menu(mainMenu)
mainMenu.add_cascade(label="기타 입출력", menu=comVisionMenu5)
# comVisionMenu5.add_command(label="MySQL에서 불러오기", command=loadMysql)
# comVisionMenu5.add_command(label="MySQL에 저장하기", command=saveMysql)
# comVisionMenu5.add_separator()
comVisionMenu5.add_command(label="CSV 열기", command=openCsvColor)
comVisionMenu5.add_command(label="CSV로 저장", command=saveCsvColor)
# comVisionMenu5.add_separator()
# comVisionMenu5.add_command(label="Xls로 저장", command=saveExcel)
# comVisionMenu5.add_command(label="Xls Art로 저장", command=saveExcelArt)


window.mainloop()