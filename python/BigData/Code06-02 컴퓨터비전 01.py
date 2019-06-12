from tkinter import *
from tkinter.simpledialog import *
from tkinter.filedialog import *
import math
import os
import os.path
#--------------------------------------------------------
#### 함수 선언부 ####
# 메모리를 할당해서 리스트(참조)를 반환하는 함수
def malloc(h, w) :
    reMemory = []
    for _ in range(inH) :
        tmpList = []
        for _ in range(inW) :
            tmpList.append(0)
        reMemory.append(tmpList)
    return reMemory

def loadImage(fname) :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    fsize = os.path.getsize(fname) #파일의 크기(바이트)
    inH = inW = int(math.sqrt(fsize)) # 핵심코드
    # 입력영상 메모리 확보 // 이중 for문사용해서 초기화 => 이미지 계속 불러와야하므로 누적되어진걸 초기화히는 작업
    inImage = []
    inImage = malloc(inH, inW)

    # 파일 --> 메모리
    with open(filename, 'rb') as rFp:
        for i in range(inH) :
            for k in range(inW) :
                inImage[i][k] = int(ord(rFp.read(1)))
    print(inH, inW)
    print(int(ord(inImage[100][100])))


def openImage() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    filename = askopenfilename(parent=window,
     filetypes=(("RAW 파일", "*.raw"), ("모든 파일", "*.*")))
    loadImage(filename) #rb binary # 함수 30라인 넘어가면 다른걸로 선언
    equalImage()

def saveImage() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    pass

def displayImage() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    if canvas != None :
        canvas.destory()
    ## 화면 크기를 조절
    window.geometry(str(outH) + 'x' + str(outW)) # 벽
    canvas = Canvas(window, height = outH, width = outW) # 보드
    paper = PhotoImage(height = outH, width = outW) # 빈종이
    canvas.create_image((outH//2, outW//2), image = paper, state = 'normal')
    ## 출력 영상 --> 화면에 한점씩 찍자.
    for i in range(outH) :
        for k in range(outW) :
            r = g = b = outImage[i][k]
            paper.put("#%02x%02x%02x" % (r, g, b), (k, i)) # 위치가 굴려져있으므로 반대로 변환시켜준다 i, k -> k, i # 16진수 표현법
    canvas.pack(expand = 1, anchor = CENTER)
#### 컴퓨터 비전 (영상처리) 알고리즘 함수 모음 #####
# 동일영상 알고리즘 # 알고리즘에 따라서 출력단 size 변환되어진다.
def equalImage() :
    global window, canvas, paper, filename, inImage, outImage, inH, inW, outH, outW
    ## 중요! 코드. 출력영상 크기 결정
    outH = inH; outW = inW;
    ## 메모리 할당 ##
    outImage = []
    outImage = malloc(outH, outW)

    ## 진짜 컴퓨터 비전 알고리즘 ##
    for i in range(inH) :
        for k in range(inW) :
            outImage[i][k] = inImage[i][k]

    displayImage()



#---------------------------------------------------------
#### 전연변수 선언부 #####
inImage, outImage = [], []
inH, inW, outH, outW = [0] * 4
window, canvas, paper = None, None, None
filename = ""



#---------------------------------------------------------
#### 메인코드부 ####

window = Tk()
window.geometry("400x400")
window.title("컴퓨터 비전(딥러닝 기법) ver 0.001")

mainMenu = Menu(window)
window.config(menu=mainMenu)

fileMenu = Menu(mainMenu)
mainMenu.add_cascade(label="파일", menu=fileMenu)
fileMenu.add_command(label="파일 열기", command=openImage)
fileMenu.add_separator()
fileMenu.add_command(label="파일 저장", command=saveImage)

comVisionMenu1 = Menu(mainMenu)
mainMenu.add_cascade(label="알고리즘A", menu=comVisionMenu1)
comVisionMenu1.add_command(label="알고리즘1", command=None)
comVisionMenu1.add_command(label="알고리즘2", command=None)

window.mainloop()

#----------------------------------------------------------
