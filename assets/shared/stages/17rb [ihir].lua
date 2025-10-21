local normTop =	-540
local normBot = 660
local normValue = 600
function onCreate()
		makeLuaSprite('WHITEG', '', -1600, -1000)
	makeGraphic('WHITEG',1280,1280,'FFFFFF')
  
  addLuaSprite('WHITEG')
  scaleLuaSprite('WHITEG', 6, 6)
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

function onUpdatePost()
	setProperty('gf.visible', false)
	
end