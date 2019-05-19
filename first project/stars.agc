make_stars:

   CreateImageColor(5,255,255,255,255)
   for i=1 to 100
	   createsprite(i+5,5)
	   setspritesize(i+5,2,2)
	   SetSpritePosition(i+5,random(1,768),random(1,1080))
   next i
return

move_stars:

for i=1 to 100
	StarY=GetSpriteY(5+i)+2
	If StarY>1080
		StarY=0
    Endif
    SetSpritePosition(i+5, GetSpriteX(i+5),StarY)
next i
Return
