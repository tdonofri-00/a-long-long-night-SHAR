--[[
local wrenchFile = "m7_wrenchN.p3d"
if Mode.IsHard then
	wrenchFile = "m7_wrenchH.p3d"
end
]]

Game.SelectMission("m7")

	Game.SetMissionResetPlayerInCar("m7_bart_arena")
	Game.SetDynaLoadData("m7_arena.p3d;")

	Game.StreetRacePropsLoad("m7_arena.p3d;m7_wrenchH.p3d;l5z1.p3d:l5r1.p3d:l5z2.p3d:l5r2.p3d:l5z3.p3d:l5r3.p3d:l5z4.p3d:l5r4.p3d:")
	Game.StreetRacePropsUnload("m7_arena.p3d:m7_wrenchN.p3d:m7_wrenchH.p3d:m7_ending.p3d:")
	--Game.StreetRacePropsUnload("m7_arena.p3d:l5z1.p3d;l5r1.p3d;l5r4.p3d;MasterController*")	--crashes because regions with semicolons interfere with quit to main menu

	Game.SetParkedCarsEnabled(0)

	--this shit don't work
	--[[
	if Flags.M7UseArenaIntroCam then
		Game.SetAnimatedCameraName( "M7CamShape2" )
		Game.SetAnimCamMulticontName( "CAM_M7_Intro" )
	end
	]]

	Game.UsePedGroup(1)
	Game.SetNumValidFailureHints( Mode.FailHintCount )

	Game.SetHUDMapDrawable("hudmap_no_mesh")

	--this stage is required or the game will erroneously fail you for "being outside the trigger fuck you"
	Game.AddStage(0)
		Game.RESET_TO_HERE()
		Game.DisableTrigger("z4z1r4r1")
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		LockPlayer(9)
		Game.AddStageCharacter("bart", "", "", "current", "m7_bart_arena")
		Game.AddStageVehicle("snake_v", "m7_snake_arena", "NULL", "Missions/level01/M7snake.con", "snake")
		Game.AddStageVehicle("cPolic3", "m7_wiggum_arena", "NULL", "Missions/level01/M7wiggum.con", "wiggum")
		Game.AddStageVehicle("krust_v", "m7_krusty_arena", "NULL", "Missions/level01/M7krusty.con", "krusty")
		Game.AddStageVehicle("cLimo2", "m7_limo_arena", "NULL", "Missions/level01/M7limo.con", "mobstr")
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
		Game.SetMusicState("Mission7", "Silent")
	Game.CloseStage()
	
	if Flags.M7UseArenaIntroCam then
		Game.AddStage()
			LockPlayer(9)
			Game.AddStageVehicle("snake_v", "m7_snake_arena", "NULL", "Missions/level01/M7snake.con", "snake")
			Game.AddStageVehicle("cPolic3", "m7_wiggum_arena", "NULL", "Missions/level01/M7wiggum.con", "wiggum")
			Game.AddStageVehicle("krust_v", "m7_krusty_arena", "NULL", "Missions/level01/M7krusty.con", "krusty")
			Game.AddStageVehicle("cLimo2", "m7_limo_arena", "NULL", "Missions/level01/M7limo.con", "mobstr")
			Game.AddObjective("camera")
				Game.SetObjCameraName("M7CamShape2")
				Game.SetObjMulticontName("CAM_M7_Intro")
				Game.SetObjCanSkip(1)	-- i guess this one can be skippable
				Game.SetObjNoLetterbox(1)
			Game.CloseObjective()
			Game.SetMusicState("Mission7", "Fight")
			Game.SetStageMusicAlwaysOn()
		Game.CloseStage()

		Flags.M7UseArenaIntroCam = false
	end

	Game.AddStage(0)
		Game.DisableHitAndRun()
		Game.DisableTrigger("z4z1r4r1")
		Game.SetHUDIcon("w_m7enemy")
		Game.SetStageMessageIndex(4)
		Game.NoTrafficForStage()
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3", 800)
			Game.AddToCountdownSequence("2", 800)
			Game.AddToCountdownSequence("1", 800)
			Game.AddToCountdownSequence("FIGHT", 400)
		Game.AddStageVehicle("snake_v", "m7_snake_arena", "chase", "Missions/level01/M7snake.con", "snake")
		Game.AddStageVehicle("cPolic3", "m7_wiggum_arena", "chase", "Missions/level01/M7wiggum.con", "wiggum")
		Game.AddStageVehicle("krust_v", "m7_krusty_arena", "chase", "Missions/level01/M7krusty.con", "krusty")
		Game.AddStageVehicle("cLimo2", "m7_limo_arena", "chase", "Missions/level01/M7limo.con", "mobstr")
		--Game.AddStageCharacter("bart", "", "l5z1.p3d:l5r1.p3d:l5r4.p3d:", "current", "m7_bart_arena")
		Game.AddObjective("destroycars")
			Game.AddObjTargetModel("snake_v")
			Game.AddObjTargetModel("cPolic3")
			Game.AddObjTargetModel("krust_v")
			Game.AddObjTargetModel("cLimo2")
			Game.SetObjTotal(4)
		Game.CloseObjective()
		Game.SetStageTime(239)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.AddCondition("outsidetrigger")	--prevent getting out of bounds
			Game.SetCondTrigger("m7_stay_in_arena")
		Game.CloseCondition()
		SurviveConditions()
		Game.SetMusicState("Mission7", "Fight")
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	--don't want players beating this with a destroyed vehicle
	Game.AddStage(0)
		Game.DisableTrigger("z4z1r4r1")
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		Game.SetStageTime(2)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		SurviveConditions()
	Game.CloseStage()
	
	--satisfaction stage WOOT
	local itemNames = {
		"kmeal",
		"firewrks",
		"cd",
		"duffbox"
	}
	local x = 1
	Game.AddStage()
		Game.DisableTrigger("z4z1r4r1")
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		Game.SetHUDIcon("w_m7item")
		Game.SetStageMessageIndex(5)
		Game.AddObjective("delivery", "neither")
			for i=1, 32 do
				Game.AddCollectible("m7_satisfaction" .. i, itemNames[x])
				x = x + 1
				if x > #itemNames then
					x = 1
				end
			end
		Game.CloseObjective()
		Game.SetStageMusicAlwaysOn()
		Game.SetFadeOut(2)
		Game.SetCompletionDialog("gators")
	Game.CloseStage()
	
	Game.AddStage()
		LockPlayer(9)
		Game.SetStageAllowMissionCancel(0)
		Game.AddStageCharacter("bart", "", "", "current", "m7_bart_load_ending")
		Game.AddObjective("timer")
			Game.SetDurationTime(2)
			Game.StayInBlack()
		Game.CloseObjective()
		Game.SetStageMusicAlwaysOn()
		Game.SetCompletionDialog("leavearena")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageAllowMissionCancel(0)
		LockPlayer(9)
		Game.AddStageCharacter("bart", "", "", "current", "m7_bart_ending")
		--[[
		Game.AddObjective("timer")
			Game.SetDurationTime(7)
		Game.CloseObjective()
		]]
		
		Game.AddObjective("camera")
			Game.SetObjCameraName("M7CamShape")
			Game.SetObjMulticontName("CAM_M7_Ending")
			Game.SetObjCanSkip(0)	--who would want to miss out on this scene?
			Game.SetObjNoLetterbox(1)	--fade out doesn't work without this
		Game.CloseObjective()
		
		Game.SetStageMusicAlwaysOn()
		Game.SetFadeOut(2)
	Game.CloseStage()
	
	Game.AddStage()
		LockPlayer(9)
		Game.SetStageAllowMissionCancel(0)
		Game.AddStageCharacter("bart", "", "", "current", "m7_bart_unload")
		Game.AddObjective("timer")
			Game.SetDurationTime(2)
			Game.StayInBlack()
		Game.CloseObjective()
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	Game.AddStage("final")
		LockPlayer(9)
		--Game.SetMaxTraffic(5)
		Game.NoTrafficForStage()
		--Game.AddStageCharacter("bart", "", "", "current", "m7_bart_ending")
		Game.AddStageCharacter("bart", "", "", "current", "m7_bart_end_venue")
		Game.AddObjective("timer")
			Game.SetDurationTime(1.0)
		Game.CloseObjective()
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

Game.CloseMission()
