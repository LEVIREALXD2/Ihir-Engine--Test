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
end
function onCreatePost()
	makeLuaSprite('kamarZ', 'BGnaufal/bgHfzz', -600, 0)
	addLuaSprite('kamarZ', false)
	setProperty('kamarZ.scale.x', 1)
	setProperty('kamarZ.scale.y', 1)
	
	makeLuaSprite('amba', 'ambalabu', 850, 700)
	addLuaSprite('amba')
	setProperty('amba.scale.x', 1)
	setProperty('amba.scale.y', 1)
	
	makeLuaSprite('kamar', 'BGnaufal/NopalsRoom', -500, 220)
	addLuaSprite('kamar', false)
	setProperty('kamar.scale.x', 1.6)
	setProperty('kamar.scale.y', 1.6)
	loadGraphic('kamar','BGnaufal/NopalsRoom',700, 700)
	
	makeAnimatedLuaSprite('B', 'BGnaufal/barrierW')
	addAnimationByPrefix('B', 'barrier', 'barrier', 12, true)
	addLuaSprite('B')
	scaleObject('B', 1.2, 1.2)
	setProperty('B.x', 300)
	setProperty('B.y', 0)
	
	makeLuaSprite('GradBeat', 'gradientCol', 0, 0)
	addLuaSprite('GradBeat')
	setProperty('GradBeat.scale.x', 3.6)
	setProperty('GradBeat.scale.y', 0.5)
	setProperty('GradBeat.angle', -90)
	setProperty('GradBeat.x', 410)
	setProperty('GradBeat.y', 0)
	
	makeLuaSprite('GradBeat2', 'gradientCol', 0, 0)
	addLuaSprite('GradBeat2')
	setProperty('GradBeat2.scale.x', 3.6)
	setProperty('GradBeat2.scale.y', 0.5)
	setProperty('GradBeat2.angle', 90)
	setProperty('GradBeat2.x', 50)
	setProperty('GradBeat2.y', 0)
	
	makeLuaSprite('GradBeatGlow', 'gradientCol', 0, 0)
	addLuaSprite('GradBeatGlow')
	setProperty('GradBeatGlow.scale.x', 3.6)
	setProperty('GradBeatGlow.scale.y', 0.5)
	setProperty('GradBeatGlow.angle', -90)
	setProperty('GradBeatGlow.x', 410)
	setProperty('GradBeatGlow.y', 0)
	setBlendMode('GradBeatGlow', 'add')
	
	makeLuaSprite('GradBeat2Glow', 'gradientCol', 0, 0)
	addLuaSprite('GradBeat2Glow')
	setProperty('GradBeat2Glow.scale.x', 3.6)
	setProperty('GradBeat2Glow.scale.y', 0.5)
	setProperty('GradBeat2Glow.angle', 90)
	setProperty('GradBeat2Glow.x', 50)
	setProperty('GradBeat2Glow.y', 0)
	setBlendMode('GradBeat2Glow', 'add')
	
	setProperty('GradBeatGlow.alpha', 0)
	setProperty('GradBeat2Glow.alpha', 0)
	
	--Ini dijadikan "Custom Game" utama
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

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('GradBeatGlow.alpha', 0.2)
		setProperty('GradBeat2Glow.alpha', 0.2)
		
		doTweenAlpha('GLOWW', 'GradBeatGlow', 0, 1, 'expoOut')
		doTweenAlpha('GLOWW2', 'GradBeat2Glow', 0, 1, 'expoOut')
	end

end