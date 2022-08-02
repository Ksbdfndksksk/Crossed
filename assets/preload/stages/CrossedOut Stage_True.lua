function onCreate()
	makeLuaSprite('Final_Stars1', 'Final_Stars1', -1600, -800);
	setScrollFactor('Final_Stars1', 0.6, 0.6);
	scaleObject('Final_Stars1', 15, 15);
	
	makeLuaSprite('Final_Stars2', 'Final_Stars2', -1600, -800);
	setScrollFactor('Final_Stars2', 0.4, 0.4);
	scaleObject('Final_Stars2', 15, 15);

  if not lowQuality then
	makeAnimatedLuaSprite('Final_Bendy','Final_Bendy', -1080, -490)
	addAnimationByPrefix('Final_Bendy','IdleBedy','DeathBendy instance ',24, true)
	scaleObject('Final_Bendy', 2.2, 2.2);

	makeAnimatedLuaSprite('Final_Cuphead','Final_Cuphead', -470, 30)
	addAnimationByPrefix('Final_Cuphead','IdleCuphead','Idle instance ',24, true)
	scaleObject('Final_Cuphead', 1.9, 1.9);

	makeAnimatedLuaSprite('Final_Sans','Final_Sans', -120, -440)
	addAnimationByPrefix('Final_Sans','IdleSans','Nightmare SANS Idle instance ',24, true)
	scaleObject('Final_Sans', 1.5, 1.5);

	makeAnimatedLuaSprite('Final_Cuphead_front','Final_Cuphead', -470, 30)
	addAnimationByPrefix('Final_Cuphead_front','IdleCuphead','Idle instance ',24, true)
	scaleObject('Final_Cuphead_front', 1.9, 1.9);

	makeAnimatedLuaSprite('Final_Sans_front','Final_Sans', -120, -440)
	addAnimationByPrefix('Final_Sans_front','IdleSans','Nightmare SANS Idle instance ',24, true)
	scaleObject('Final_Sans_front', 1.5, 1.5);
   end

	makeLuaSprite('CupheadStage1_Front', 'CupheadStage1_Front', -825, -495);
	setScrollFactor('CupheadStage1_Front', 1, 1);
	scaleObject('CupheadStage1_Front', 3.2, 3.2);

	makeLuaSprite('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', -795, -495);
	setScrollFactor('CupheadStage2_Dark_Front', 1, 1);
	scaleObject('CupheadStage2_Dark_Front', 3.2, 3.2);

	doTweenAlpha('CupheadStage2_Dark_Background', 'CupheadStage2_Dark_Background', 0, 0.01,'linear')
	doTweenAlpha('CupheadStage2_Dark_Back', 'CupheadStage2_Dark_Back', 0, 0.01,'linear')
	doTweenAlpha('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', 0, 0.01,'linear')

	makeLuaSprite('SansStage1_Back', 'SansStage1_Back', -800, -550);
	setScrollFactor('SansStage1_Back', 1, 1);
	scaleObject('SansStage1_Back', 5, 5);

	makeLuaSprite('SansStage3_Back', 'SansStage3_Back', -800, -550);
	setScrollFactor('SansStage3_Back', 1, 1);
	scaleObject('SansStage3_Back', 6, 6);

	makeLuaSprite('BendyStage1_Front', 'BendyStage1_Front', -700, -470);
	setScrollFactor('BendyStage1_Front', 1, 1);
	scaleObject('BendyStage1_Front', 3.6, 3.6);

	makeAnimatedLuaSprite('BendyStage2_Back','BendyStage2_Back', -750, -450)
	scaleObject('BendyStage2_Back', 8, 8);
	addAnimationByPrefix('BendyStage2_Back','Pain ','Pain ', 16, true)
	doTweenAlpha('BendyStage2_Back','BendyStage2_Back', 0, 0.01, 'linear')

	makeAnimatedLuaSprite('BendyStage3_Back','BendyStage3_Back', -750, -450)
	scaleObject('BendyStage3_Back', 8, 8);
	addAnimationByPrefix('BendyStage3_Back','Pain ','Pain ', 16, true)
	doTweenAlpha('BendyStage3_Back','BendyStage3_Back', 0, 0.01, 'linear')

	if not lowQuality then

		makeAnimatedLuaSprite('CupheadStage2_Rain2','CupheadStage2_Rain2', -700, -250)
		addAnimationByPrefix('CupheadStage2_Rain2','RainFirstlayer instance ','RainFirstlayer instance ',24, true)
		scaleObject('CupheadStage2_Rain2', 6.4, 6.4);	

		makeAnimatedLuaSprite('SansStage3_Papyrus','SansStage3_Papyrus', -500, -110)
		addAnimationByPrefix('SansStage3_Papyrus','Idle instance ','Idle instance ',24, true)
		scaleObject('SansStage3_Papyrus', 2, 2);

		objectPlayAnimation('SansStage3_Papyrus','Idle instance ', false)
		makeAnimatedLuaSprite('SansStage3_Gf','SansStage3_Gf', 800, 150)
		addAnimationByPrefix('SansStage3_Gf','GF Dancing Beat','GF Dancing Beat',12, true)
		objectPlayAnimation('SansStage3_Gf','GF Dancing Beat', false)

		makeLuaSprite('SansStage3_Mugman', 'SansStage3_Mugman', 1600, 750);

	end

	addLuaSprite('CupheadStage1_Background', false);
	addLuaSprite('CupheadStage1_Back', false);
	addLuaSprite('CupheadStage1_Front', false);
	addLuaSprite('CupheadStage2_Dark_Background', false);
	addLuaSprite('CupheadStage2_Dark_Back', false);
	addLuaSprite('CupheadStage2_Dark_Front', false);

	close(true);
end

