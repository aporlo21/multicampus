from tkinter import *
from tkinter import messagebox
def clickButton() :
    messagebox.showinfo('요기제목', '요기내용')

window = Tk() # root = Tk()

label1 = Label(window, text = "파이썬 공부중~~" )
label2 = Label(window, text = "파이썬 공부중~~", font=("궁서체", 30), fg = "blue")
label3 = Label(window, text = "파이썬 ", bg = "red", width=20, height=5, anchor = SE)

photo = PhotoImage(file='C:\images\Pet_GIF\Pet_GIF(256x256)/cat01_256.gif')
label4 = Label(window, image = photo)
button1 = Button(window, text = '나를 눌러줘', command = clickButton ) # 함수의 시작은 소문자, 동사형으로 상용
button2 = Button(window, image = photo, command = clickButton ) # 함수의 시작은 소문자, 동사형으로 상용

label1.pack(side = LEFT)
label2.pack()
label3.pack()
label4.pack() # 빈 레이블에 내용붙이기
button1.pack()
button2.pack(side = RIGHT)
window.mainloop()

