local DelayThePress = true
local DelayForPress = 0.4
local transition = false
function onCreatePost()
	makeLuaSprite('none', '', -10000, -10000)----trigger button click mouse alt----
	addLuaSprite('none')
	
	makeLuaSprite('vc', 'VCan/BGwaDark', 0, 0)
	addLuaSprite('vc')
	setProperty('vc.scale.x', 0.7)
	setProperty('vc.scale.y', 0.7)
	setObjectCamera('vc', 'hud')
	screenCenter('vc')
	setObjectOrder('vc', 1)
	
	makeLuaSprite('vcL', 'VCan/BGwa', 0, 0)
	addLuaSprite('vcL')
	setProperty('vcL.scale.x', 0.7)
	setProperty('vcL.scale.y', 0.7)
	setObjectCamera('vcL', 'hud')
	screenCenter('vcL')
	setProperty('vcL.visible', false)
	setObjectOrder('vcL', 2)
	
	makeLuaSprite('stuff', 'VCan/buttonStuffwa', 0, 0)
	addLuaSprite('stuff')
	setObjectCamera('stuff', 'hud')
	setProperty('stuff.scale.x', 0.35)
	setProperty('stuff.scale.y', 0.35)
	screenCenter('stuff')
	setObjectOrder('stuff', 100)
	setProperty('stuff.offset.y', -290)
	
	makeLuaSprite('stuffL', 'VCan/buttonStuffwaL', 0, 0)
	addLuaSprite('stuffL')
	setObjectCamera('stuffL', 'hud')
	setProperty('stuffL.scale.x', 0.35)
	setProperty('stuffL.scale.y', 0.35)
	screenCenter('stuffL')
	setObjectOrder('stuffL', 100)
	setProperty('stuffL.offset.y', -290)
	setProperty('stuffL.visible', false)
	
	makeLuaSprite('ENDCALL', '', 730, 627)
	makeGraphic('ENDCALL',65,45,'FFFFFF')
	addLuaSprite('ENDCALL')
	setObjectCamera('ENDCALL','camHUD')
	setObjectOrder('ENDCALL', 103)
	setProperty('ENDCALL.alpha', 0)
	
	
	--SPRITE IN HUD--
		setObjectCamera('boyfriend', 'hud')
		setProperty('boyfriend.x', 690)
		setProperty('boyfriend.y', 240)
		
		
		setObjectCamera('dad', 'hud')
		setProperty('dad.x', 260)
		setProperty('dad.y', -165)
		
		
		setObjectCamera('gf', 'hud')
		setProperty('gf.x', 400)
		setProperty('gf.y', 330)
		
	--SPRITE IN HUD--
	
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	
	setProperty('healthBar.angle', 90)
	setProperty('healthBar.offset.x', 600)
	setProperty('healthBar.scale.y', 1.5)
	setProperty('healthBar.scale.x', 0.8)
	screenCenter('healthBar')
	
	setProperty('scoreTxt.offset.y', 100)
	
	setProperty('timeBar.offset.x', -440)
	setProperty('timeBar.offset.y', -750)
	setProperty('timeBar.scale.x', 0.9)
	setProperty('timeTxt.offset.x', getProperty('timeBar.offset.x') - 160)
	setProperty('timeTxt.offset.y', getProperty('timeBar.offset.y') + 0)
	setProperty('timeBar.scale.y', 1.5)
	setProperty('timeBar.alpha', 1)
	setProperty('timeTxt.alpha', 1)
	setProperty('timeBar.antialiasing', false)
	
	doTweenY('tir', 'timeTxt', -20, 7.5, 'CircOut')
	doTweenY('ti', 'timeBar', -20, 7.5, 'CircOut')
	
	
	--ON SING--
	makeLuaSprite('singBF', 'VCan/onSing', 0, 0)
	addLuaSprite('singBF')
	setObjectCamera('singBF', 'hud')
	setObjectOrder('singBF', 5)
	setProperty('singBF.x', getProperty('boyfriend.x') - 103)
	setProperty('singBF.y', getProperty('boyfriend.y') - 245)
	setProperty('singBF.scale.x', getProperty('boyfriend.scale.x') + 0)
	setProperty('singBF.scale.y', getProperty('boyfriend.scale.y') + 0)
	setProperty('singBF.visible', false)
	
	makeLuaSprite('singDAD', 'VCan/onSing', 0, 0)
	addLuaSprite('singDAD')
	setObjectCamera('singDAD', 'hud')
	setObjectOrder('singDAD', 5)
	setProperty('singDAD.x', getProperty('dad.x') - 110)
	setProperty('singDAD.y', getProperty('dad.y') + 160)
	setProperty('singDAD.scale.x', getProperty('dad.scale.x') + 0)
	setProperty('singDAD.scale.y', getProperty('dad.scale.y') + 0)
	setProperty('singDAD.visible', false)
	
	makeLuaSprite('singBFcol', 'VCan/onSing', 0, 0)
	addLuaSprite('singBFcol')
	setObjectCamera('singBFcol', 'hud')
	setObjectOrder('singBFcol', 5)
	setProperty('singBFcol.x', getProperty('boyfriend.x') - 103)
	setProperty('singBFcol.y', getProperty('boyfriend.y') - 245)
	setProperty('singBFcol.scale.x', getProperty('boyfriend.scale.x') + 0)
	setProperty('singBFcol.scale.y', getProperty('boyfriend.scale.y') + 0)
	setProperty('singBFcol.visible', false)
	setProperty('singBFcol.alpha', 0)
	setProperty('singBFcol.color', getColorFromHex(bfColor()))
	setObjectOrder('singBFcol', 10)
	
	makeLuaSprite('singDADcol', 'VCan/onSing', 0, 0)
	addLuaSprite('singDADcol')
	setObjectCamera('singDADcol', 'hud')
	setObjectOrder('singDADcol', 5)
	setProperty('singDADcol.x', getProperty('dad.x') - 110)
	setProperty('singDADcol.y', getProperty('dad.y') + 160)
	setProperty('singDADcol.scale.x', getProperty('dad.scale.x') + 0)
	setProperty('singDADcol.scale.y', getProperty('dad.scale.y') + 0)
	setProperty('singDADcol.visible', false)
	setProperty('singDADcol.alpha', 0)
	setProperty('singDADcol.color', getColorFromHex(dadColor()))
	setObjectOrder('singDADcol', 9)
	
	runHaxeCode([[
												//
		var BRUH = new FlxCamera();
        BRUH.bgColor = 0x00000000;
		FlxG.cameras.remove(game.camHUD, false);
		FlxG.cameras.remove(game.camOther, false);
        
		
		var spr = game.getLuaObject('vc');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('vcL');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('stuff');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('stuffL');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('ENDCALL');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('FFAN');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('singBF');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('singDAD');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('singBFcol');
        if (spr != null) spr.cameras = [BRUH];
		var spr = game.getLuaObject('singDADcol');
        if (spr != null) spr.cameras = [BRUH];
		boyfriend.cameras = [BRUH];
		dad.cameras = [BRUH];
		gf.cameras = [BRUH];
		
		FlxG.cameras.add(BRUH, false);
		FlxG.cameras.add(camHUD, false);
		FlxG.cameras.add(camOther, false);
		
    ]])
end
local objlastZoom = 0.7
function onUpdatePost()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
       if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.U') then        
	   if not getProperty('vcL.visible') then
			setProperty('vcL.visible', true)
			setProperty('stuffL.visible', true)
			setProperty('stuff.visible', false)
			setProperty('singDADcol.alpha', 1)
			setProperty('singBFcol.alpha', 1)
        else
			setProperty('vcL.visible', false)
			setProperty('stuffL.visible', false)
			setProperty('stuff.visible', true)
			setProperty('singDADcol.alpha', 0)
			setProperty('singBFcol.alpha', 0)
			setProperty('paused', false)
			setProperty('playbackRate', 1)
        end
		end
		
	if downscroll then
		setProperty('scoreTxtKade.offset.y', 110)
		setObjectOrder('stuff', 20)
		setObjectOrder('stuffL', 20)
		
	else
		return
	end
	
	
end
function onUpdate()
	setPropertyFromClass("openfl.Lib","application.window.title", "WhatsApp")
	
	if not DelayThePress then
			if (((getMouseX('camHUD') >= getProperty('ENDCALL.x') and getMouseX('camHUD') <= (getProperty('ENDCALL.x') + getProperty('ENDCALL.width'))) and (getMouseY('camHUD') >= getProperty('ENDCALL.y') and getMouseY('camHUD') <= (getProperty('ENDCALL.y') + getProperty('ENDCALL.height')))) and mousePressed('left')) then
			end
	else
			if not transition and (((getMouseX('camHUD') >= getProperty('ENDCALL.x') and getMouseX('camHUD') <= (getProperty('ENDCALL.x') + getProperty('ENDCALL.width'))) and (getMouseY('camHUD') >= getProperty('ENDCALL.y') and getMouseY('camHUD') <= (getProperty('ENDCALL.y') + getProperty('ENDCALL.height')))) and mousePressed('left')) then
			transition = true
			runTimer('transitonT', DelayForPress)
			if getProperty('none.visible') then
			setProperty('none.visible', true)
					--setProperty('canPause', false)
			setPropertyFromClass('Conductor', 'songPosition', getSongPosition())
			setProperty('paused', true)
			setProperty('playbackRate', 0)
			playSound('owhh')
			--debugPrint('SUCSESSS')
			runTimer('EXITGAME', 1, 1)
			end
			end
			
	end
end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Friday Night Funkin': Ihir! Engine")
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end

function onSongStart(tag)
	doTweenY('tir', 'timeTxt', -80, 4, 'ExpoOut')
	doTweenY('ti', 'timeBar', -80, 1.8, 'ExpoOut')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	setProperty('singBF.visible', true)
	setProperty('singBFcol.visible', true)
	runTimer('offSingBF', 0.15, 1)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	setProperty('singDAD.visible', true)
	setProperty('singDADcol.visible', true)
	runTimer('offSingDAD', 0.15, 1)
end

function onTimerCompleted(tag)
local videoPath = "mods\\vsNaufalV3\\videos\\erm\\owh.mp4"
local exePath = "mods\\PsychEngine.exe.Lnk"
	if tag == 'transitonT' then
         transition = false
   end
   
   if tag == 'EXITGAME' then
		
	--os.execute('start "" "' .. videoPath .. '"')
	os.exit()
   end
   
	if tag == 'offSingBF' then
		setProperty('singBF.visible', false)
		setProperty('singBFcol.visible', false)
	end
	if tag == 'offSingDAD' then
		setProperty('singDAD.visible', false)
		setProperty('singDADcol.visible', false)
	end
end

function bfColor()
    return rgbToHex(getProperty('boyfriend.healthColorArray'))
end

function dadColor()
    return rgbToHex(getProperty('dad.healthColorArray'))
end

function rgbToHex(rgb) -- https://www.codegrepper.com/code-examples/lua/rgb+to+hex+lua
    return string.format('%02x%02x%02x', math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
end