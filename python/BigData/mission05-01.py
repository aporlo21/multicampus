# 2) p322. 10번
from tkinter import*
from tkinter.filedialog import*
from tkinter.simpledialog import*
# 함수 선언부
def open():
    global photo
    filename = askopenfilename(parent = window, filetypes = (("GIF 파일", "*.gif"),
                                                             ("모든 파일", "*.*")))
    photo = PhotoImage(file = filename)
    pLabel.configure(image = photo)
    pLabel.image = photo

def exit():
    window.quit()
    window.destory()

def zoom_in():
    global photo,pLabel
    mult = int(askinteger("확대배수", "확대할 배수를 입력하세요(2~8)"))
    photo = photo.zoom(mult, mult)
    pLabel.configure(image = photo)
    pLabel.image = photo

def zoom_out():
    global photo, pLabel
    dev = int(askinteger("축소배수", "축소할 배수를 입력하세요(2~8)"))
    photo = photo.subsample(dev, dev)
    pLabel.configure(image = photo)
    pLabel.image = photo

# 메인 코드부
window = Tk()
window.geometry("500x500")
window.title("빅데이터 신생아")

photo = PhotoImage()
pLabel = Label(window, image = photo)
pLabel.pack(expand = 1, anchor = CENTER) # 위젯배치

mainMenu = Menu(window)
window.config(menu = mainMenu)

fileMenu = Menu(mainMenu)
mainMenu.add_cascade(label = '파일', menu = fileMenu)
fileMenu.add_command(label = '파일열기', command = open)
fileMenu.add_separator()
fileMenu.add_command(label = '프로그램종료', command = exit)

expandMenu = Menu(mainMenu)
mainMenu.add_cascade(label = '이미지효과', menu = expandMenu)
expandMenu.add_command(label = '확대하기', command = zoom_in)
expandMenu.add_command(label = '축소하기', command = zoom_out)

window.mainloop()