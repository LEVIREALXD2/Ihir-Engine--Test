
function onCreate()
	makeLuaSprite('WHITEG', '', -1600, -1000)
	makeGraphic('WHITEG',1280,1280,'FFFFFF')
  
  addLuaSprite('WHITEG')
  scaleLuaSprite('WHITEG', 6, 6)
	
end

function onUpdatePost()
	setProperty('gf.visiblex', false)
end