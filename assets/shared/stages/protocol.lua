scl = 1.3
local sames = -500
local timer = 0
function onCreate()
	makeLuaSprite('NONEE', '', -500, -300)
    addLuaSprite('NONEE')
	
	makeLuaSprite('NONEEP', '', -500, -300)
    addLuaSprite('NONEEP')
end
function onCreatePost()
    setProperty('gf.visible', false)
	
	makeLuaSprite('SKI', 'BGnaufal/unpixelated/sky', -500, -300)
    addLuaSprite('SKI')
    setProperty('SKI.scale.x', scl)
    setProperty('SKI.scale.y', scl)

	makeLuaSprite('MOUNT', 'BGnaufal/unpixelated/mountain', -600, -200)
    addLuaSprite('MOUNT')
    setProperty('MOUNT.scale.x', scl)
    setProperty('MOUNT.scale.y', scl)
	
	makeLuaSprite('GROUNDBACK', 'BGnaufal/unpixelated/ground_back', -700, -300)
    addLuaSprite('GROUNDBACK')
    setProperty('GROUNDBACK.scale.x', scl)
    setProperty('GROUNDBACK.scale.y', scl)
	
	makeLuaSprite('PIPE', 'BGnaufal/unpixelated/pipe', -600, -370)
    addLuaSprite('PIPE')
    setProperty('PIPE.scale.x', scl)
    setProperty('PIPE.scale.y', scl)
	
	makeLuaSprite('PBACK', 'BGnaufal/unpixelated/platform_back', -700, sames)
    addLuaSprite('PBACK')
    setProperty('PBACK.scale.x', scl)
    setProperty('PBACK.scale.y', scl)
	
	makeLuaSprite('PFRONT', 'BGnaufal/unpixelated/platform_front', -700, sames)
    addLuaSprite('PFRONT')
    setProperty('PFRONT.scale.x', scl)
    setProperty('PFRONT.scale.y', scl)
	
	makeLuaSprite('HIGHFEELING', 'BGnaufal/unpixelated/high_feeling', -600, -500)
    addLuaSprite('HIGHFEELING')
    setProperty('HIGHFEELING.scale.x', scl)
    setProperty('HIGHFEELING.scale.y', scl)
	
	makeLuaSprite('GROUND', 'BGnaufal/unpixelated/ground', -600, -500)
    addLuaSprite('GROUND')
    setProperty('GROUND.scale.x', scl)
    setProperty('GROUND.scale.y', scl)
	
	makeLuaSprite('FLOOR', 'BGnaufal/unpixelated/stage', -1100, -500)
    addLuaSprite('FLOOR')
    setProperty('FLOOR.scale.x', scl)
    setProperty('FLOOR.scale.y', scl)
	
	makeLuaSprite('STUFFF', 'BGnaufal/unpixelated/furniture', -1100, -500)
    addLuaSprite('STUFFF')
    setProperty('STUFFF.scale.x', scl)
    setProperty('STUFFF.scale.y', scl)
	
	makeLuaSprite('SHAD', 'BGnaufal/unpixelated/shaders_lightning', -1100, -500)
    addLuaSprite('SHAD')
    setProperty('SHAD.scale.x', scl)
    setProperty('SHAD.scale.y', scl)
	setObjectOrder('SHAD', 9999)
	
	setScrollFactor('SKI', 0.1, 0.1)
	setScrollFactor('MOUNT', 0.2, 0.2)
	setScrollFactor('GROUNDBACK', 0.5, 0.5)
	setScrollFactor('PIPE', 0.6, 0.6)
	setScrollFactor('PBACK', 0.55, 0.55)
	setScrollFactor('PFRONT', 0.7, 0.7)
	setScrollFactor('HIGHFEELING', 0.7, 0.7)
	setScrollFactor('GROUND', 0.8, 0.8)
	
	---PIXEL STAGES---
	local sclP = 5
	local posxP = -300
	local posyP = -300
	
	makeLuaSprite('8-SKI', 'BGnaufal/protocol-8bit/sky', posxP+800, posyP)
    addLuaSprite('8-SKI')
    setProperty('8-SKI.scale.x', sclP)
    setProperty('8-SKI.scale.y', sclP)
	setProperty('8-SKI.antialiasing', false)
	
	makeLuaSprite('8-MOUNT', 'BGnaufal/protocol-8bit/mountain', posxP+500, posyP+100)
    addLuaSprite('8-MOUNT')
    setProperty('8-MOUNT.scale.x', sclP)
    setProperty('8-MOUNT.scale.y', sclP)
	setProperty('8-MOUNT.antialiasing', false)
	
	makeLuaSprite('8-CAST', 'BGnaufal/protocol-8bit/caslt', posxP+300, posyP+200)
    addLuaSprite('8-CAST')
    setProperty('8-CAST.scale.x', sclP)
    setProperty('8-CAST.scale.y', sclP)
	setProperty('8-CAST.antialiasing', false)
	
	makeLuaSprite('8-STUFFBACK', 'BGnaufal/protocol-8bit/pipesnbricks', posxP, posyP+100)
    addLuaSprite('8-STUFFBACK')
    setProperty('8-STUFFBACK.scale.x', sclP)
    setProperty('8-STUFFBACK.scale.y', sclP)
	setProperty('8-STUFFBACK.antialiasing', false)
	
	makeLuaSprite('8-GROUND', 'BGnaufal/protocol-8bit/ground', posxP, posyP)
    addLuaSprite('8-GROUND')
    setProperty('8-GROUND.scale.x', sclP)
    setProperty('8-GROUND.scale.y', sclP)
	setProperty('8-GROUND.antialiasing', false)
	
	makeLuaSprite('8-GROUND1', 'BGnaufal/protocol-8bit/ground', posxP, posyP+410)
    addLuaSprite('8-GROUND1')
    setProperty('8-GROUND1.scale.x', sclP)
    setProperty('8-GROUND1.scale.y', sclP)
	setProperty('8-GROUND1.antialiasing', false)
	
	makeLuaSprite('8-STUFF', 'BGnaufal/protocol-8bit/luckyblokntree', posxP, posyP+200)
    addLuaSprite('8-STUFF')
    setProperty('8-STUFF.scale.x', sclP)
    setProperty('8-STUFF.scale.y', sclP)
	setProperty('8-STUFF.antialiasing', false)
	
	makeLuaSprite('8-SHAD', 'BGnaufal/protocol-8bit/lighting', posxP, posyP+200)
    addLuaSprite('8-SHAD')
    setProperty('8-SHAD.scale.x', sclP)
    setProperty('8-SHAD.scale.y', sclP)
	setProperty('8-SHAD.antialiasing', false)
	setObjectOrder('8-SHAD', 9999)
	
	setScrollFactor('8-SKI', 0.1, 0.1)
	setScrollFactor('8-MOUNT', 0.2, 0.2)
	setScrollFactor('8-CAST', 0.6, 0.6)
	setScrollFactor('8-STUFFBACK', 0.85, 0.85)
	---PIXEL STAGES---
	
	function onUpdatePost()
		setProperty('SKI.visible', getProperty('NONEE.visible'))
		setProperty('MOUNT.visible', getProperty('NONEE.visible'))
		setProperty('GROUNDBACK.visible', getProperty('NONEE.visible'))
		setProperty('PIPE.visible', getProperty('NONEE.visible'))
		setProperty('PBACK.visible', getProperty('NONEE.visible'))
		setProperty('PFRONT.visible', getProperty('NONEE.visible'))
		setProperty('HIGHFEELING.visible', getProperty('NONEE.visible'))
		setProperty('GROUND.visible', getProperty('NONEE.visible'))
		setProperty('FLOOR.visible', getProperty('NONEE.visible'))
		setProperty('STUFFF.visible', getProperty('NONEE.visible'))
		setProperty('SHAD.visible', getProperty('NONEE.visible'))
		
		---PIXEL STAGES---
		setProperty('8-SKI.visible', getProperty('NONEEP.visible'))
		setProperty('8-MOUNT.visible', getProperty('NONEEP.visible'))
		setProperty('8-CAST.visible', getProperty('NONEEP.visible'))
		setProperty('8-STUFFBACK.visible', getProperty('NONEEP.visible'))
		setProperty('8-GROUND.visible', getProperty('NONEEP.visible'))
		setProperty('8-GROUND1.visible', getProperty('NONEEP.visible'))
		setProperty('8-STUFF.visible', getProperty('NONEEP.visible'))
		setProperty('8-SHAD.visible', getProperty('NONEEP.visible'))
		---PIXEL STAGES---
		
	end
	setProperty('NONEE.visible', false)
end

function onUpdate(elapsed)
    timer = timer + elapsed
    local offsetY = math.sin(timer * 1) * 100 -- amplitudo 20, kecepatan 2
    local PoffsetY = math.sin(timer * 0.76) * 70 -- amplitudo 20, kecepatan 2
    setProperty('PFRONT.y', sames - offsetY)
    setProperty('PBACK.y', sames + PoffsetY)
end

function onStepHit()

end