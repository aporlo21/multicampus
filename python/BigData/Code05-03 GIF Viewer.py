from tkinter import *

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

from tkinter.simpledialog import *
def hopImage(count=0) :
    if count==0 :
        count = askinteger("건너뛸 수", "숫자-->")
    for _ in range(count) :
        clickNext()

from tkinter.filedialog import *
def selectFile() :
    filename = askopenfilename(parent = window, filetypes = (("GIF파일", "*.gif;*.raw"), ("모든파일", "*.*")))
    print(filename)
    pLabel.configure(text=str(filename))
    pLabel.text=filename))
## 메인 코드부

window = Tk()
window.title('GIF 사진뷰어 Beta (Ver 0.01)')
window.geometry("500x300") # 가로 * 세로
window.resizable(width = FALSE, height = TRUE)

photo = PhotoImage(file = dirName + fnameList[num])
pLabel = Label(window, image=photo)

btnPrev = Button(window, text='<< 이전 그림', command = clickPrev )
btnNext = Button(window, text='다음 그림 >>', command = clickNext )
btnCenter = Button(window, text='센터백')

btnPrev.place(x=150, y=10)
btnNext.place(x=250, y=10)
btnCenter.place(x=200, y=10)

pLabel.place(x=15, y=50)
window.mainloop()

hopMenu = Menu(mainMenu)
mainMenu.add_cascade(label)