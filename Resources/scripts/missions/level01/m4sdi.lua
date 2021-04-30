Game.SelectMission("m4sd")

	Game.SetMissionResetPlayerOutCar("m4_bart_loc","m4_bart_carstart")
	Game.SetDynaLoadData("l5z2.p3d;l5r1.p3d;l5r2.p3d;")

	Game.UsePedGroup(5)

Output([[
    AddStage("locked", "car", "");
]])    --because game.lua doesn't fucking recognize the last two parameters!!!
		Game.SetStageMessageIndex(9)
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()	-- empty stage because objective text doesn't show after locked stage message.
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
--		Game.RESET_TO_HERE()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(2)
		Game.AddObjective("interior")
			Game.AddNPC("homer","m4_homer_sd")
			Game.SetDestination("moe1","moes_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(3)
		Game.SetHUDIcon("w_homer")
		Game.AddObjective("talkto")
			Game.AddNPC("homer", "m4_homer_sd")
			Game.SetTalkToTarget("homer", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.AddObjective("dialogue")
			Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_04.p3d" )
			Game.AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_scratch_head" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_hands_in_air" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_open_arm_hand_gesture" )
			Game.AddAmbientPcAnimation( "none" )
			Game.SetDialogueInfo("bart","homer","duff",0)
		Game.CloseObjective()
		Game.SetDialoguePositions("m4_bart_sd","m4_homer_sd","m4_bart_carstart")
	Game.CloseStage()

Game.CloseMission()