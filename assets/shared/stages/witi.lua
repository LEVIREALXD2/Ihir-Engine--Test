
function onCreate()
	makeLuaSprite('WHITEG', '', -1600, -1000)
	makeGraphic('WHITEG',1280,1280,'FDFDFD')
  
  addLuaSprite('WHITEG')
  scaleLuaSprite('WHITEG', 6, 6)
  
  --cinematic awokawok
	
end

function onCreatePost()
	setProperty('gf.visiblex', false)
	 runHaxeCode([[
		FlxG.cameras.remove(game.camHUD, false);
		FlxG.cameras.remove(game.camOther, false);
												//CINEMATIC CAMERA
		var BRUH = new FlxCamera();
        BRUH.bgColor = 0x00000000;
		setVar('BRUH',BRUH);
		
		
		var spr = game.getLuaObject('flash');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('bartop');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('barbot');
        if (spr != null) spr.cameras = [BRUH];
		
		FlxG.cameras.add(BRUH, false);
		FlxG.cameras.add(game.camHUD, false);
		FlxG.cameras.add(game.camOther, false);
		
    ]])
end

function onBeatHit()
	if (songName == "Similarities") then
	if curBeat == 432 then
		doTweenAlpha('BOYalpha', 'boyfriend', 0, 0.3, 'circOut')
		doTweenAlpha('DADalpha', 'dad', 0, 0.3, 'circOut')
		makeLuaSprite('WHITE', '', -1600, -1000)
		makeGraphic('WHITE',1280,1280,'FFFFFF')
		setProperty('WHITE.alpha', 0)
		doTweenAlpha('YEAAAYY', 'WHITE', 1, 0.3, 'circOut')
		addLuaSprite('WHITE')
		scaleLuaSprite('WHITE', 6, 6)
		
		doTweenZoom('CVM', 'camGame', 0.3, 0.3, 'circOut')
	end
	end
end