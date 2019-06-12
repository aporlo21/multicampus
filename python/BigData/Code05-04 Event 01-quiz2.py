from tkinter import *
from tkinter import messagebox
def clickLeft(event) :
    txt = ''
    if event.num == 1 :
        txt += '왼쪽 버튼 :'
    elif event.num == 2 :
        txt += '가운데 버튼 :'
    else :
        txt += '오른쪽 버튼 :'
    txt += str(event.x) + ",", str(event.y)
    messagebox.showinfo('요기제목', txt)

def keyPress(event) :
    messagebox.showinfo('요기제목', chr(event.keycode))

window = Tk()
window.geometry("500x300")

photo = PhotoImage(file='C:\images\Pet_GIF\Pet_GIF(256x256)/cat01_256.gif')
labell = Label(window, image = photo)

labell.bind("<Button>", clickLeft)

window.bind("<Key>", keyPress)

labell.pack(expand=1, anchor=CENTER)
window.mainloop()



