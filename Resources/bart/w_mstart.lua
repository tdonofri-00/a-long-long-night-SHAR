if Flags.UseApuIntro then
	Redirect("/GameData/apu/" .. ApuMstart[ApuMstartIndex])

	if ApuMstartIndex >= #ApuMstart then
		ApuMstartIndex = 1
	else
		ApuMstartIndex = ApuMstartIndex + 1
	end
	return
elseif Flags.NoMstartDialog then
	Redirect("/GameData/conversations/yes.rsd")	--don't say anything
	return
end