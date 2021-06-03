Game.SelectMission("m4sd")

	Game.SetMissionResetPlayerOutCar("m4_bart_loc","m4_bart_carstart")
	Game.SetDynaLoadData("l5z2.p3d;l5r1.p3d;l5r2.p3d;")

	Game.UsePedGroup(5)

--[[
	this should appear the first time the player reaches this SD mission.
	any successive entrances will not display this message until the
	player exits the game and comes back here.
	
	if the player uses Mission Select to enter this SD mission, this
	message will never appear even if they cancel the actual mission.
]]
if Flags.DisplayBarricadeMessage then
	Game.AddStage("locked", "car", "")
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")
		Game.SetStageMessageIndex(9)
		Game.AddObjective("timer")
			Game.SetDurationTime(0.5)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()	-- empty stage because objective text doesn't show after locked stage message.
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Flags.DisplayBarricadeMessage = false
end

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(2)
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")
		Game.AddObjective("interior")
			Game.SetDestination("moe1","moes_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(3)
		Game.SetHUDIcon("w_homer")
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")	--we're still showing the vehicle in case player leaves.
		Game.AddObjective("talkto", "neither")
			Game.AddNPC("homer", "m4_homer_sd", "moe1")
			Game.SetTalkToTarget("homer", 0, 0, "2.0")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.AddStageVehicle("homer_v", "m4_homercar_sd", "NULL", "homer_v.con")
		Game.AddObjective("dialogue")
			Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_04.p3d" )
			Game.AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.AddAmbientNpcAnimation( "dialogue_open_arm_gesture" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_hands_in_air" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_yes" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_no" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
			Game.AddAmbientPcAnimation( "none" )
			--Game.SetDialogueInfo("bart","homer","duff",0)
			Game.SetDialogueInfo("bart","homer","homerwantin",0)
		Game.CloseObjective()
		Game.SetDialoguePositions("m4_bart_sd","m4_homer_sd","m4_bart_carstart")
	Game.CloseStage()

Game.CloseMission()