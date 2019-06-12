# 3) 텍스트 파일 뷰어를 만들기
# => 메뉴 [파일] >> [열기] 에서 텍스트 파일 선택
# => 선택된 파일을 화면에 출력 (Text 위젯 사용)
# => 파일의 내용을 변경
# => 메뉴 [파일] >> [저장] 을 선택하면 파일이 저장됨
# => (선택) 메뉴에서 [편집] >> [바꾸기] 기능 구현

from tkinter import*
from tkinter import messagebox
from tkinter.simpledialog import*
from tkinter.filedialog import*
import os

# 함수선언부

def readTxt(fname):
    global txtMain
    with open(fname) as inFp:
        content = inFp.readlines()
        txtMain.delete(1.0,tkinter.END)
        txtMain.insert(1.0, '\n'.join(content))

def saveTxt(fname):
    global txtMain
    with open(fname.name, "w")as outFp:
        outFp.write(str(txtMain.get(1.0,tkinter.END)))
    messagebox.showinfo('저장', '파일이 저장되었습니다.')

def Open():
    fname = askopenfilename(parent = window, filetypes = (("TXT파일", "*.txt"),
                                                          ("모든파일", "*.*")))
    readTxt(fname)
# 
def Save():
    fname = asksaveasfile(parent = window,
                          filetypes = (("TXT파일", "*.txt"),("모든파일","*.*")),
                          defaultextension = '.txt', mode = 'w')
    saveTxt(fname)

def Replace():
    pass

# 메인코드부
window = Tk()
window.title("TextViewer (Ver 0.01)")
window.geometry("500x500")
window.resizable(width = FALSE, height = TRUE)

mainMenu = Menu(window)
window.config(menu = mainMenu)

fileMenu = Menu(mainMenu)
editMenu = Menu(mainMenu)

mainMenu.add_cascade(label = '파일', menu = fileMenu)
fileMenu.add_command(label = '열기', command = Open)
fileMenu.add_command(label = '저장', command = Save)
mainMenu.add_cascade(label = '편집', menu = editMenu)
editMenu.add_command(label = '바꾸기', command = Replace)

txtMain = Text()

txtMain.pack(expand = 1, anchor = CENTER)

window.mainloop()