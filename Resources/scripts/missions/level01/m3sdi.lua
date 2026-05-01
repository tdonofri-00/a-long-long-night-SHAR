Game.SelectMission("m3sd")

-- if none of the others have it, it's best if this one is left out.
-- besides, players have instant control upon warping, and warping from m3 causes the cam to play outside of loaded regions.
--[[
Game.SetMissionStartCameraName( "mission6camShape" )
Game.SetMissionStartMulticontName( "mission6cam" )
Game.SetAnimatedCameraName( "mission6camShape" )
Game.SetAnimCamMulticontName( "mission6cam" )
]]

Game.SetMissionResetPlayerOutCar("m3_bart_sd","m3_carstart_sd")
Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade

Game.SetPedsEnabled(1)

Game.UsePedGroup(5)

--[[
--testing new carsphere replacement
Game.AddStage()
Game.RESET_TO_HERE()
Game.SetStageMessageIndex(1)
Game.SetHUDIcon("w_stad")
Game.SetMaxTraffic(5)
Game.AddObjective("goto")
Game.SetDestination("m3_stadium_sd","upwardglow")
Game.MustActionTrigger()
Game.CloseObjective()
Game.CloseStage()
]]

Game.AddStage()
	Game.SetStageMessageIndex(1)
	Game.SetHUDIcon("w_stad")
	Game.SetMaxTraffic(5)
	Game.AddObjective("goto")
		Game.AddNPC("krusty", "m3_krusty_sd")
		Game.SetDestination("m3_stadium_sd","upwardglow")
	Game.CloseObjective()
Game.CloseStage()

Game.AddStage(0)
	Game.RESET_TO_HERE()
	Game.SetStageMessageIndex(02)
	Game.SetHUDIcon("w_krust")
	Game.AddObjective("talkto")
		Game.AddNPC("krusty", "m3_krusty_sd")
		Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_1")
		Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_2")
		Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_3")
		Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_4")
		Game.SetTalkToTarget("krusty", 0, 0)
	Game.CloseObjective()
Game.CloseStage()

Game.AddStage(1)
	Game.AddObjective("dialogue")
		Game.SetPresentationBitmap( "art\\frontend\\dynaload\\images\\mis01_03.p3d" )
		Game.AddNPC("krusty", "m3_krusty_sd")
		Game.AmbientAnimationRandomize( 1, 0 )
		Game.AmbientAnimationRandomize( 0, 0 )
		Game.SetConversationCam( 0, "pc_far" )
		Game.SetConversationCam( 1, "npc_far" )
		Game.SetConversationCam( 2, "pc_far" )
		Game.SetConversationCam( 3, "npc_far" )
		Game.SetConversationCam( 4, "pc_near" )
		Game.AddAmbientNpcAnimation( "none" )
		Game.AddAmbientNpcAnimation( "dialogue_no" )
		Game.AddAmbientNpcAnimation( "none" )
		Game.AddAmbientNpcAnimation( "dialogue_thinking" )
		Game.AddAmbientNpcAnimation( "dialogue_cross_arms" )
		Game.AddAmbientPcAnimation( "dialogue_shake_hand_in_air" )
		Game.AddAmbientPcAnimation( "none" )
		Game.AddAmbientPcAnimation( "none" )
		Game.AddAmbientPcAnimation( "none" )
		Game.AddAmbientPcAnimation( "dialogue_yes" )
		Game.SetCamBestSide("m3_bestside")
		Game.SetDialogueInfo("bart","krusty","helpkrusty",0)
		Game.SetDialoguePositions("m3_bart_talk","m3_krusty_talk","m3_carstart_sd")
	Game.CloseObjective()
Game.CloseStage()

Game.CloseMission()