Game.SelectMission("m1sd")

	Game.SetMissionResetPlayerOutCar("m1_brt_loc","m1_car_loc")
	Game.SetDynaLoadData("l5z4.p3d;l5r3.p3d;l5r4.p3d;")
	Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
	Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade
	Game.SetPedsEnabled(1)

	Game.UsePedGroup(5)

	Game.AddStage()
		Game.DisableTrigger("some_camera_locator")
		Game.SetStageMessageIndex(2)
		Game.SetHUDIcon("w_mono")
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("snake_v","m1_snk_car_sd","NULL","snake_v.con")
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m1_monorail","carsphere")
			Game.AddNPC("snake","m1_snake_sd")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.RESET_TO_HERE()
		Game.DisableTrigger("some_camera_locator")
		Game.SetStageMessageIndex(03)
		Game.SetHUDIcon("w_snake")
		Game.SetMaxTraffic(5)
		Game.AddObjective("talkto")
			Game.AddNPC("snake", "m1_snake_sd")
			for i= 1,3 do
			Game.AddObjectiveNPCWaypoint("snake" , "m1_snakewalk_"..i)
			end
			Game.SetTalkToTarget("snake", 0, 0)
			Game.AddStageVehicle("snake_v","m1_snk_car_sd","NULL","snake_v.con")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.DisableTrigger("some_camera_locator")
		Game.NoTrafficForStage()
		Game.AddStageVehicle("snake_v","m1_snk_car_sd","NULL","snake_v.con")
		Game.AddObjective("dialogue")
			Game.SetPresentationBitmap( "art\\frontend\\dynaload\\images\\mis01_01.p3d" )
			Game.AddNPC("snake", "m1_snk_loc")
			Game.AmbientAnimationRandomize( 1, 0 )
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.SetConversationCam( 0, "pc_far" )
			Game.SetConversationCam( 1, "npc_near" )
			Game.SetConversationCam( 2, "pc_far" )
			Game.SetConversationCam( 3, "npc_far" )
			Game.SetConversationCam( 4, "pc_near" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_shaking_fist" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_scratch_head" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_open_arm_hand_gesture" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_yes" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_shake_hand_in_air" )
			Game.SetDialogueInfo("bart","snake","mugging",0)
			Game.SetDialoguePositions("m1_bart_sd","m1_snake_sd","m1_car_loc")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.ResetStageHitAndRun()
		Game.NoTrafficForStage()
		Game.AddStageVehicle("snake_v","m1_snk_car_sd","NULL","snake_v.con")
		Game.AddStageVehicle("yellow","m1_goony1_sd","evade","fone_v.con", "male1")
		Game.AddStageVehicle("black","m1_goony2_sd","evade","fone_v.con", "joger1")
		Game.AddStageCharacter("bart", "spawn_player_to_cam_here", "", "current", "m1_car_loc")
		Game.AddStageWaypoint("m1_goonies_waypoint")
		Game.AddObjective("timer")
			--Game.AddDriver("snake", "snake_v")
			--Game.RemoveNPC("snake")
			Game.SetDurationTime(4)
		Game.CloseObjective()
		Game.SetFadeOut(2)
		Game.SetCompletionDialog("barthitbyc")
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.AddStageCharacter("bart", "spawn_player_to_cam_here", "", "current", "m1_car_loc")
		Game.AddObjective("timer")
			Game.SetDurationTime(6)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()