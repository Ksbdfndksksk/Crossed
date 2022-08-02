function onCreate()

	makeAnimatedLuaSprite('dodge', 'virtualbuttons', 0, 582.5);
	addAnimationByPrefix('dodge', 'anonPress', 'anonPress', 24, false);
	addAnimationByPrefix('dodge', 'aPressed', 'aPressed', 12, false);
	addLuaSprite('dodge', false);
	setObjectCamera('dodge', 'other');

end

function onUpdate()
	if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 128) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyReleased('space') then
		objectPlayAnimation('dodge', 'aPressed', false);
	else
		objectPlayAnimation('dodge', 'anonPress', false);
	end
end










-- please credit me or dont delete this text!
-- script by Misha21220[GD]

local allowend = false
local MishaGaymer = true
function onCreate()
       if difficultyName == 'Hell' then
         makeLuaSprite('normal', 'achievements/HELL', 0, 0)  --your achiviement image
         scaleObject('normal', 0.75, 0.75)
         setObjectCamera('normal', 'other')
         setProperty('normal.alpha', 0) -- visible ooooooo dont change
         addLuaSprite('normal',  true)

         makeLuaText('text', 'Ultimate Triumph', 200, 120, 10) -- change your title text
         setTextSize('text', '20') --text size 
         setTextColor('text', '7F0000') --change color in hex
         setObjectCamera('text', 'other')
         setProperty('text.alpha', 0)
         addLuaText('text', true)

         makeLuaText('text2', 'Beat Crossed Out on HELL', 200, 120, 40) -- change your description text
         setTextSize('text2', '20') --text size 
         setTextColor('text2', 'ffffff') --change color in hex
         setObjectCamera('text2', 'other')
         setProperty('text2.alpha', 0)
         addLuaText('text2', true)

         makeLuaSprite('normal2', 'achievements/HELLFC', 0, 0)  --your achiviement image
         scaleObject('normal2', 0.75, 0.75)
         setObjectCamera('normal2', 'other')
         setProperty('normal2.alpha', 0) -- visible ooooooo dont change
         addLuaSprite('normal2',  true)

         makeLuaText('text1', 'Funkin God', 200, 120, 10) -- change your title text
         setTextSize('text1', '25') --text size 
         setTextColor('text1', 'ff0000') --change color in hex
         setObjectCamera('text1', 'other')
         setProperty('text1.alpha', 0)
         addLuaText('text1', true)

         makeLuaText('text21', 'Beat Crossed Out on HELL with no misses', 200, 120, 40) -- change your description text
         setTextSize('text21', '15') --text size 
         setTextColor('text21', 'FF2100') --change color in hex
         setObjectCamera('text21', 'other')
         setProperty('text21.alpha', 0)
         addLuaText('text21', true)
       end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gg' and getProperty('songMisses') > 0 then
	allowend = true
	endSong() --  timer will end song lol
	end

	if tag == 'gg' and getProperty('songMisses') < 1 then
         doTweenAlpha('normalAlpha', 'normal', 0, 0.4, 'cubeInOut') 
         doTweenAlpha('textAlpha', 'text', 0, 0.4, 'cubeInOut')
         doTweenAlpha('text2Alpha', 'text2', 0, 0.4, 'cubeInOut') -- first achievement bye bye
	 runTimer('FC', 0.6, 1) -- 0.6 is time when second achievement will appear
	end

	if tag == 'FC' then
         doTweenAlpha('normal2Alpha', 'normal2', 1, 2.4, 'cubeInOut') 
         doTweenAlpha('text1Alpha', 'text1', 1, 2.4, 'cubeInOut') -- second achievement lets go
         doTweenAlpha('text21Alpha', 'text21', 1, 2.4, 'cubeInOut')
	 runTimer('end', 5, 1) 
	end

	if tag == 'end' then
	allowend = true
	endSong() --  timer will end song but now with 2 achievements *o*
	end
end

function onEndSong()
     if not allowend and difficultyName == 'Hell' then
         playSound('award', 0.75) --buggy, sorry ;(
         doTweenAlpha('normalAlpha', 'normal', 1, 2.4, 'cubeInOut') --shows text and image yaya
         doTweenAlpha('textAlpha', 'text', 1, 2.4, 'cubeInOut')
         doTweenAlpha('text2Alpha', 'text2', 1, 2.4, 'cubeInOut')
	 runTimer('gg', 5, 1) -- this timer will check your fc a
         return Function_Stop
     end
   return Function_Continue
end --Script is done :3











function onCreate()
    --BG and Effects--
    precacheImage('BendyStage1_Front')
    precacheImage('BendyStage2_Back')
    precacheImage('BendyStage3_Back')
    precacheImage('BendyStage2_InkRain')
    precacheImage('Final_Stars1')
    precacheImage('Final_Stars2')
    precacheImage('InkAmbiente')
    precacheImage('SansStage1_Back')
    precacheImage('SansStage3_Back')
    --Boyfriend--
    addCharacterToList('bf_bendy_1', 'boyfriend')
    addCharacterToList('bf_bendy_2', 'boyfriend')
    addCharacterToList('bf_bendy_3', 'boyfriend')
    addCharacterToList('bf_cuphead_1', 'boyfriend')
    addCharacterToList('bf_cuphead_2', 'boyfriend')
    addCharacterToList('bf_final', 'boyfriend')
    addCharacterToList('bf_sans_1', 'boyfriend')
    addCharacterToList('bf_sans_2', 'boyfriend')
    addCharacterToList('bf_sans_3', 'boyfriend')
    addCharacterToList('bf_sans_4', 'boyfriend')
    --Characters--
    addCharacterToList('bendy_normal', 'dad')
    addCharacterToList('bendy_run', 'dad')
    addCharacterToList('bendy_run_dark', 'dad')
    addCharacterToList('cuphead_angry', 'dad')
    addCharacterToList('final_bendy', 'dad')
    addCharacterToList('final_cuphead', 'dad')
    addCharacterToList('final_sans', 'dad')
    addCharacterToList('sans_attack', 'dad')
    addCharacterToList('sans_normal', 'dad')
    addCharacterToList('sans_angry', 'dad')
    addCharacterToList('sans_snow', 'dad')
    addCharacterToList('cuphead_angry', 'gf')
    --Bg and Effects High Quality--
  if not lowQuality then    
         addCharacterToList('nothing', 'gf')
    precacheImage('SansStage3_Mugman')
    precacheImage('InkSplash_Ink')
    precacheImage('Ink_shit')
    precacheImage('Final_Cuphead')
    precacheImage('Final_Bendy')
    precacheImage('Final_Sans')
    precacheImage('SansEvent_Blaster')
    precacheImage('CupheadStage2_BfGhost')
    precacheImage('CupheadStage2_Rain2')
    precacheImage('SansEvent_Blaster')
    precacheImage('SansStage3_Gf')
    precacheImage('SansStage3_Papyrus')
  end
    --Amogusyta--
end
