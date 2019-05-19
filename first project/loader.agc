loader:
LoadImage(1,"spaceship.png")
LoadImage(2,"friendlylaser.jpg")
LoadImage(3,"enemy.jpg")
LoadImage(4,"laser.png")

CreateSprite(1,1)
playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight()-GetSpriteHeight(1)

SetSpritePosition(1,playerx,playery)

CreateSprite (2,2)
SetSpritePosition(2,-100,-100)

Createsprite (3,3)
SetSpritePosition(3,100,20)

for i=0 to 4
      createsprite(110+i,4)
next i

Return
