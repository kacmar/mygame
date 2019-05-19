SetVirtualResolution(768,1080)
SetWIndowSize(768,1080,0)
UseNewDefaultFonts(1)

playerx as float
playery as float
lazerx as float = -100
lazery as float =-100
lazer_fired = 0

enemyx as float
enemyy as float
enemy_direction=4
enemy_fired=0
gameover=1

score=0
hiscore=0

#include "loader.agc"
#include "playermove.agc"
#include "player_shoots.agc"
#include "sounds.agc"
#include "enemy_move.agc"
#include "collision.agc"
#include "stars.agc"
#include "text.agc"
#include "main_menu.agc"


Gosub loader
gosub load_sounds
gosub Make_text
gosub make_stars
gosub load_music

do
	
	if gameover=1
		gosub Mainmenu
		score=0
	endif
	
	gosub playermove
	Gosub player_shoots
	gosub Enemy_move
	gosub Collision
	gosub move_stars
	gosub move_stars
	gosub enemy_shoot

	
	 SetTextString(1,"SCORE: "+str(score))
	 if score>hiscore
		 hiscore=score
     endif
     Settextstring (3,"Highscore:"+str(hiscore))
     	
	sync()
Loop
