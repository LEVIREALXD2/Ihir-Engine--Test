local normTop =	-540
local normBot = 660
local normValue = 600
function onCreate()
	 --cinematic awokawok
  makeLuaSprite('barTop','',0,normTop)
    makeGraphic('barTop',1280,normValue,'000000')
    addLuaSprite('barTop')
    setObjectCamera('barTop','hud')
    setScrollFactor('barTop',0,0)

    makeLuaSprite('barBot','',0,normBot)
    makeGraphic('barBot',1280,normValue,'000000')
    addLuaSprite('barBot')
    setScrollFactor('barBot',0,0)
    setObjectCamera('barBot','hud')
	
	setObjectOrder('barTop', 999)
	setObjectOrder('barBot', 999)
	
	makeLuaSprite('ini meja :v', 'meja', 0, -250)
  
  addLuaSprite('ini meja :v', false)
  scaleLuaSprite('ini meja :v', 1.5, 1.5)
end
function onCreatePost()
	runHaxeCode([[
		FlxG.cameras.remove(game.camHUD, false);
		FlxG.cameras.remove(game.camOther, false);
												//CINEMATIC CAMERA
		var BRUH = new FlxCamera();
        BRUH.bgColor = 0x00000000;
		setVar('BRUH',BRUH);
		
		var spr = game.getLuaObject('flash');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('barTop');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('barBot');
        if (spr != null) spr.cameras = [BRUH];
		
		FlxG.cameras.add(BRUH, false);
		FlxG.cameras.add(game.camHUD, false);
		FlxG.cameras.add(game.camOther, false);
		
    ]])
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