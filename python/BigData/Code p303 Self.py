from tkinter import *
from tkinter import messagebox
## 전역 변수 선언부
dirName = "C:/images/Pet_GIF/Pet_GIF(256x256)/"
fnameList = [ "cat01_256.gif","cat02_256.gif","cat03_256.gif",
              "cat04_256.gif","cat05_256.gif","cat06_256.gif"]
photoList = [None] * 6
num = 0 #현재사진순번

## 함수 선언부
def clickPrev() :
    pass
def clickNext() :
    global num
    num += 1
    if num >= len(fnameList) :
        num = 0
    photo = PhotoImage(file=dirName + fnameList[num])
    pLabel.configure(image=photo)
    pLabel.photo=photo
    # messagebox.showinfo('요기제목', "txt")
## 36 35 37 39
def keyPress(event) :
    global num
    if(event.keycode==36): # home
        num=0
    if(event.keycode==35): # end
        num=len(fnameList)-1
    if(event.keycode==37): # left
        num=num-1
    if(event.keycode==39): # right
        num=num+1
        if num>len(fnameList)
    photo = PhotoImage(file=dirName + fnameList[num])
    pLabel.configure(image=photo)
    pLabel.photo = photo


# 메인 코드부

window = Tk()
window.title('GIF 사진뷰어 Beta (Ver 0.01)')
window.geometry("512x300") # 가로 * 세로
window.resizable(width = FALSE, height = TRUE)

photo = PhotoImage(file = dirName + fnameList[num])
pLabel = Label(window, image=photo)


btnPrev = Button(window, text='<< 이전 그림', command = clickPrev )
btnNext = Button(window, text='다음 그림 >>', command = clickNext )
btnCenter = Button(window, text='센터백')

btnPrev.place(x=512/4, y=10)
btnNext.place(x=512/4*3, y=10)
btnCenter.place(x=512/4*2, y=10)

# 256 512
pLabel.place(x=512/4*1, y=50)
window.bind("<Key>", keyPress)
window.mainloop()


