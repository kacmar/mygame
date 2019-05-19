Mainmenu:

Createtext (2,"StarWars in 1945")
settextsize (2,100)
SetTextPosition(2,(768-GetTextTotalWidth(2))/2,180)

Createtext (3, "HighScore: ")
settextsize(3,60)
SetTextPosition(3,768-GetTextTotalwidth(3),0)

CreateText(4, "Fire to start game")
SetTextSize(4,60)
Settextposition(4, (768-GetTextTotalwidth (4))/2,900)

gosub hidegamesprites
gosub showmenutext

repeat
	sync()
until GetPointerPressed()=1

gameover=0
gosub showgamesprites
gosub hidemenutext

return

hidegamesprites:
for i=1 to 114
	setspritevisible(i,0)
next i
return

showgamesprites:
for i=1 to 144
	setspritevisible(i,1)
next i
return

hidemenutext:
settextvisible(2,0)
SetTextVisible(4,0)
return

Showmenutext:
settextvisible(2,1)
settextvisible(4,1)
return
