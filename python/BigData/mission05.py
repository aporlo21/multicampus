# 1) p325 그림판 만들기
from tkinter import*
from tkinter .colorchooser import*
from tkinter .simpledialog import*
#함수 선언부#

def Click(event) :
    global x1,y1,x2, y2
    x1 = event.x
    y1 = event.y

def Drop(event):
    global x1, y1, x2, y2, penWidth, penColor, penStyle
    x2 = event.x
    y2 = event.y
    if penStyle == 'C':
        canvas.create_oval(x1,y1,x2,y2,width = penWidth, fill = penColor)
    elif penStyle == 'L':
        canvas.create_line(x1,y1,x2,y2,width = penWidth, fill = penColor)

def getColor():
    global penColor
    color = askcolor()
    penColor = color[1]

def getWidth():
    global penWidth
    penWidth = askinteger("선 두께", "선 두께(1~10)를 입력하세요",
                          minvalue = 1, maxvalue = 10)

def Circle():
    global penStyle
    penStyle = 'C'

def Line():
    global penStyle
    penStyle = 'L'

#전역변수선언부#
window = None
canvas = None
penStyle = 'L'
x1, y1, x2, y2 = None, None, None, None # 선의 시작점과 끝점
penColor = 'red'
penWidth = 3

#메인코드부#
if __name__=="__main__":
    window=Tk()
    window.title("그림판 프로그램")
    canvas = Canvas(window, height = 300, width = 300)
    canvas.bind("<Button-1>",Click)
    canvas.bind("<ButtonRelease-1>",Drop)
    canvas.pack()

    mainMenu = Menu(window)
    window.config(menu = mainMenu)

    fileMenu = Menu(mainMenu)
    lineMenu = Menu(fileMenu)

    mainMenu.add_cascade(label = "선택", menu = fileMenu)
    fileMenu.add_cascade(label = "도형", menu = lineMenu)
    lineMenu.add_command(label = "선", command = Line)
    lineMenu.add_separator()
    lineMenu.add_command(label = "원", command = Circle)

    window.mainloop()

