
function onCreate()
	makeLuaSprite('ini meja :v', 'meja', 0, -250)
  
  addLuaSprite('ini meja :v', false)
  scaleLuaSprite('ini meja :v', 1.5, 1.5)
end

function onUpdate()
	setProperty('dad.alpha', 0)
	setProperty('boyfriend.flipX', false)

  --cinematic awokawok
  makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
	
end