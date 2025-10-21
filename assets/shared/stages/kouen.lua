scl = 1.2
function onCreatePost()
    makeLuaSprite('SKI', 'BGnaufal/kouenn/sky', -1500, -400)
    addLuaSprite('SKI')
    setProperty('SKI.scale.x', scl)
    setProperty('SKI.scale.y', scl)
	
	makeLuaSprite('SUN', 'BGnaufal/kouenn/sun', 0, 0)
    addLuaSprite('SUN')
    setProperty('SUN.scale.x', scl)
    setProperty('SUN.scale.y', scl)
	setProperty('SUN.x', getProperty('SKI.x') + 1800)
    setProperty('SUN.y', getProperty('SKI.y') + 80)
	
	makeLuaSprite('CLOUD2', 'BGnaufal/kouenn/cloud2', 0, 0)
    addLuaSprite('CLOUD2')
    setProperty('CLOUD2.scale.x', scl)
    setProperty('CLOUD2.scale.y', scl)
	setProperty('CLOUD2.x', getProperty('SUN.x') - 400)
    setProperty('CLOUD2.y', getProperty('SUN.y') + 50)
	
	makeLuaSprite('CLOUD1', 'BGnaufal/kouenn/cloud1', 0, 0)
    addLuaSprite('CLOUD1')
    setProperty('CLOUD1.scale.x', scl)
    setProperty('CLOUD1.scale.y', scl)
	setProperty('CLOUD1.x', getProperty('SUN.x') - 1200)
    setProperty('CLOUD1.y', getProperty('SUN.y') - 0)
	
	makeLuaSprite('C2', 'BGnaufal/kouenn/city2', 0, 0)
    addLuaSprite('C2')
    setProperty('C2.scale.x', scl)
    setProperty('C2.scale.y', scl)
	setProperty('C2.x', getProperty('SKI.x') + 0)
    setProperty('C2.y', getProperty('SKI.y') + 560)
	
	makeLuaSprite('C1', 'BGnaufal/kouenn/city1', 0, 0)
    addLuaSprite('C1')
    setProperty('C1.scale.x', scl)
    setProperty('C1.scale.y', scl)
	setProperty('C1.x', getProperty('SKI.x') + 0)
    setProperty('C1.y', getProperty('SKI.y') + 600)
	
	makeLuaSprite('GRR1', 'BGnaufal/kouenn/ambient', 0, 0)
    addLuaSprite('GRR1')
    setProperty('GRR1.scale.x', 7000)
    setProperty('GRR1.scale.y', 20)
	setProperty('GRR1.x', getProperty('SKI.x') + 600)
    setProperty('GRR1.y', getProperty('SKI.y') + 1000)
	setProperty('GRR1.color', getColorFromHex('295C82'))
	setProperty('GRR1.flipY', true)
	
	makeLuaSprite('G2', 'BGnaufal/kouenn/ground2', 0, 0)
    addLuaSprite('G2')
    setProperty('G2.scale.x', scl)
    setProperty('G2.scale.y', scl)
	setProperty('G2.x', getProperty('SKI.x') - 300)
    setProperty('G2.y', getProperty('SKI.y') + 1100)
	
	makeLuaSprite('G1', 'BGnaufal/kouenn/ground1', 0, 0)
    addLuaSprite('G1')
    setProperty('G1.scale.x', scl)
    setProperty('G1.scale.y', scl)
	setProperty('G1.x', getProperty('G2.x') - 100)
    setProperty('G1.y', getProperty('G2.y')- 700)
	
	makeLuaSprite('STUFFF', 'BGnaufal/kouenn/stuff', 0, 0)
    addLuaSprite('STUFFF')
    setProperty('STUFFF.scale.x', scl)
    setProperty('STUFFF.scale.y', scl)
	setProperty('STUFFF.x', getProperty('G2.x') + 2300)
    setProperty('STUFFF.y', getProperty('G2.y') + 500)
	
	makeLuaSprite('FLOORR', 'BGnaufal/kouenn/floor', 0, 0)
    addLuaSprite('FLOORR')
    setProperty('FLOORR.scale.x', scl)
    setProperty('FLOORR.scale.y', scl)
	setProperty('FLOORR.x', getProperty('STUFFF.x') - 2500)
    setProperty('FLOORR.y', getProperty('STUFFF.y') + 400)
	
	makeLuaSprite('GRR', 'BGnaufal/kouenn/ambient', 0, 0)
    addLuaSprite('GRR')
    setProperty('GRR.scale.x', 7000)
    setProperty('GRR.scale.y', 100)
	setProperty('GRR.x', getProperty('STUFFF.x') + 0)
    setProperty('GRR.y', getProperty('STUFFF.y') - 700)
	setProperty('GRR.color', getColorFromHex('BAEAFF'))
	
	---BG CHAR--
	makeAnimatedLuaSprite('PPL', 'characters/bgChar/fella1', -1600, 970)
	addLuaSprite('PPL', true)
	addAnimationByPrefix('PPL', 'idle', 'fella1', 20);
	setObjectCamera('PPL', 'game')
	setObjectOrder('PPL', 16)
	setProperty('PPL.scale.x', 1.1)
	setProperty('PPL.scale.y', 1.1)
	
	makeAnimatedLuaSprite('PPL1', 'characters/bgChar/fella2', 800, 970)
	addLuaSprite('PPL1', true)
	addAnimationByPrefix('PPL1', 'idle', 'fella2', 20);
	setObjectCamera('PPL1', 'game')
	setObjectOrder('PPL1', 20)
	setProperty('PPL1.scale.x', 1.2)
	setProperty('PPL1.scale.y', 1.2)
	
	makeAnimatedLuaSprite('lele', 'characters/bgChar/LeleMieAyam', 200, 700)
	addLuaSprite('lele')
	setObjectCamera('lele', 'game')
	setObjectOrder('lele', 16)
	setProperty('lele.scale.x', 1.1)
	setProperty('lele.scale.y', 1.1)
	setProperty('lele.visible', false)
	
	function onBeatHit()
	addAnimationByPrefix('PPL', 'idle', 'fella1', 20);
	addAnimationByPrefix('PPL1', 'idle', 'fella2', 20);
	addAnimationByPrefix('lele', 'idle', 'gerobak-leya', 20);
	end
	---BG CHAR--
	
	setScrollFactor('SKI', 0.1, 0.1)
	setScrollFactor('SUN', 0.2, 0.2)
	setScrollFactor('CLOUD2', 0.24, 0.24)
	setScrollFactor('CLOUD1', 0.28, 0.28)
	setScrollFactor('C2', 0.4, 0.4)
	setScrollFactor('C1', 0.5, 0.5)
	setScrollFactor('GRR1', 0.45, 0.45)
	setScrollFactor('G2', 0.7, 0.7)
	setScrollFactor('G1', 0.9, 0.9)
	setScrollFactor('STUFFF', 1, 1)
	setScrollFactor('FLOORR', 1, 1)
	
	setBlendMode('GRR1', 'multiply')
	setBlendMode('GRR', 'add')
	
	setProperty('GRR.alpha', 0.2)
	setProperty('GRR1.alpha', 0.5)
	
	makeLuaSprite('MIEAYAM', 'characters/bgChar/mie-ayam-leya', 0, 0)
	setObjectCamera('MIEAYAM', 'game')
end
function onUpdatePost()
	
		if (songName == "Lover") then
			removeLuaSprite('PPL')
			removeLuaSprite('PPL1')
			removeLuaSprite('MIEAYAM')
		end
	
end
function onStepHit(tag)
	if (songName == "Chill-outside")then
		if curStep == 768 then
			addLuaSprite('MIEAYAM')
		setProperty('MIEAYAM.scale.x', 1.3)
		setProperty('MIEAYAM.scale.y', 1.3)
			setProperty('MIEAYAM.x', -2700)
			setProperty('MIEAYAM.y', 850)
			doTweenX('LEYY', 'MIEAYAM', 1500, 40, 'linear')
			setObjectOrder('MIEAYAM', 40)
			debugPrint('YEAAAHHHH')
		end
		if curStep == 1200 then
		setProperty('MIEAYAM.visible', false)
		end
	
		if curStep == 1305 then
		setProperty('MIEAYAM.visible', true)
		doTweenX('LEYY1', 'MIEAYAM', -600, 7, 'linear')
		setObjectOrder('MIEAYAM', 16)
		setProperty('MIEAYAM.scale.x', 1.1)
		setProperty('MIEAYAM.scale.y', 1.1)
		setProperty('MIEAYAM.flipX', true)
		setProperty('MIEAYAM.x', 1500)
		setProperty('MIEAYAM.y', 770)
		end
		
		if curStep == 1344 then
			setProperty('MIEAYAM.visible', false)
			setProperty('lele.visible', true)
		end
	end
end

function onUpdate()
	setObjectOrder('GRR', 999999)
end