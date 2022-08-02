inkFrontHudStuff = 0

function onCreate()
	if not lowQuality then
		makeAnimatedLuaSprite('Ink_shit1','Ink_shit', -280, 0)
		setObjectCamera('Ink_shit1', 'camHUD');
		addAnimationByPrefix('Ink_shit1','Ink distract run instance  ','Ink distract run instance ',1, true)
                scaleObject('Ink_shit1', 4, 4)
		
		makeAnimatedLuaSprite('Ink_shit2','Ink_shit', 482, -0)
		setObjectCamera('Ink_shit2', 'camHUD');
		addAnimationByPrefix('Ink_shit2','Ink distract run instance  ','Ink distract run instance ',1, true)
                scaleObject('Ink_shit2', 4, 4)

		makeAnimatedLuaSprite('Ink_shit3','Ink_shit', 1244, -0)
		setObjectCamera('Ink_shit3', 'camHUD');
		addAnimationByPrefix('Ink_shit3','Ink distract run instance  ','Ink distract run instance ',1, true)
                scaleObject('Ink_shit3', 4, 4)
	end
	makeAnimatedLuaSprite('BendyStage2_InkRain','BendyStage2_InkRain', 0, 0)
	setObjectCamera('BendyStage2_InkRain', 'other');
	addAnimationByPrefix('BendyStage2_InkRain','erteyd instance ','erteyd instance ',8, true)
        scaleObject('BendyStage2_InkRain', 4, 4)
end

function onEvent(name, value1, value2)
	if name == 'Event_Ink' then
		if value1 == 'Add' then
			addLuaSprite('Ink_shit1', false);
			addLuaSprite('Ink_shit2', false);
			addLuaSprite('Ink_shit3', false);
			addLuaSprite('InkAmbiente', true);
			addLuaSprite('BendyStage2_InkRain', false)

		elseif value1 == 'Remove' then
			removeLuaSprite('InkAmbiente', true);
			removeLuaSprite('Ink_shit1', true);
			removeLuaSprite('Ink_shit2', true);
			removeLuaSprite('Ink_shit3', true);
			removeLuaSprite('BendyStage2_InkRain', true)

		end	
	end
end

function onUpdate()
	songPos = getSongPosition()
	inkFrontHudStuff = (songPos/1000)*(curBpm/200)
	doTweenAlpha('InkAmbiente', 'InkAmbiente' , (math.sin(inkFrontHudStuff)*0.5) + 0.5, 0.05, 'linear');
end
