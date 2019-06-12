'''
from tkinter import*
from tkinter import messagebox

##함수선언부##
def clickLeft(event) :
    messagebox.showinfo("마우스", "마우스 왼쪽 버튼이 클릭됨")
##메인코드부##
window = Tk()
window.bind("<Button-1>", clickLeft) #Button : 모든 마우스 버튼을 클릭할때 공통으로 발생되는 이벤트 // 좌측마우스 - Button-1 // 가운데 = Button-2 // 우측 = Button-3
window.mainloop()
'''
'''
<마우스 이벤트 처리형식>
def 이벤트처리함수(event):
    이부분에 마우스 이벤트가 발생시 작동할 내용 작성
위젯.bind("마우스 이벤트", 이벤트 처리함수)
'''
from tkinter import*
from tkinter import messagebox

##함수선언부##
def clickImage(event):
    messagebox.showinfo("마우스", "토끼에서 마우스가 클릭됨")
## 메인코드부분##
window = Tk()
window.geometry("400x400")

photo=PhotoImage(file = "C:\images\Pet_GIF\Pet_GIF(256x256)")
label1=Label(window, image = photo)

label1.bind("<Button>", clickImage)

label1.pack(expand = 1, anchor = CENTER)
window.mainloop()