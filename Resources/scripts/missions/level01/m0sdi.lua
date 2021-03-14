Game.SelectMission("m0sd")

Game.SetMissionResetPlayerOutCar("level1_bart_start","level1_carstart")
Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d")
Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade

Game.UsePedGroup(5)

Game.AddStage()
Game.SetHUDIcon("w_fone")
Game.SetStageMessageIndex(01)
Game.AddObjective("goto")
Game.SetDestination("m0_phone_sd","carsphere")
Game.CloseObjective()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_fone")
Game.SetStageMessageIndex(04)
Game.AddObjective("goto")
Game.AddNPC("npd","m0_npd_sd")
Game.SetDestination("m0_phone_loc_sd","triggersphere")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.CloseObjective()
Game.CloseStage()


Game.AddStage(1)
Game.AddObjective("dialogue")
Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis00_01.p3d" )
Game.AddNPC("npd","m0_npd_sdcam")
Game.AmbientAnimationRandomize( 1, 0 )
Game.AmbientAnimationRandomize( 0, 0 )
Game.SetConversationCam( 0, "npc_far" )
Game.SetConversationCam( 1, "npc_far" )
Game.SetConversationCam( 2, "npc_far" )
Game.SetConversationCam( 3, "npc_far" )
Game.SetConversationCam( 4, "npc_far" )
Game.SetConversationCam( 5, "npc_far" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_thinking" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
Game.SetDialogueInfo("bart","npd","phone",0)
Game.SetDialoguePositions("m0_bart_sd","m0_npd_sdcam","m0_carstart_sd")
Game.CloseObjective()
Game.CloseStage()

Game.CloseMission()