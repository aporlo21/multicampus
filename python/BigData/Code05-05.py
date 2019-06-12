from tkinter import *
from tkinter import messagebox
def fileClick() :
    messagebox.showinfo('요기제목', '요기내용')

window = Tk()

mainMenu = Menu(window)
window.config(menu=mainMenu)
fileMenu = Menu(mainMenu) # 실행 : command
mainMenu.add_cascade(label='파일', menu=fileMenu) # 확장 : cascade
fileMenu.add_command(label='열기', command=fileClick)
fileMenu.add_separator(None, command=fileClick)
fileMenu.add_command(label='종료', command=none)

window.mainloop()