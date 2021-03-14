-- TODO
-- * HUD Icon

Game.SelectMission("m2sd")

Game.SetMissionResetPlayerOutCar("m2_bartstart_sd","m2_carstart_sd")
Game.SetDynaLoadData("l5z3.p3d;l5r2.p3d;l5r3.p3d;")
Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade

Game.UsePedGroup(5)

Game.AddStage()
Game.SetStageMessageIndex(01)
Game.SetHUDIcon("w_wars")
Game.AddObjective("goto")
Game.SetDestination("m2_wars","carsphere")
Game.CloseObjective()
Game.CloseStage()

Game.AddStage()
Game.RESET_TO_HERE()
Game.SetHUDIcon("w_fone")
Game.SetStageMessageIndex(02)
Game.AddObjective("goto")
Game.AddNPC("npd","m2_npd_sd")
Game.SetDestination("m2_phone_loc","triggersphere")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.CloseObjective()
Game.CloseStage()


Game.AddStage(1)
Game.AddObjective("dialogue")
Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_02.p3d" )
Game.AddNPC("npd","m2_npd_sd")
Game.AmbientAnimationRandomize( 1, 0 )      -- ( pc=0, npc=1) (nonrandom=0, random=1)
Game.AmbientAnimationRandomize( 0, 0 )
Game.SetConversationCam( 0, "npc_far" )
Game.SetConversationCam( 1, "npc_far" )
Game.SetConversationCam( 2, "npc_far" )
Game.SetConversationCam( 3, "npc_far" )
Game.SetConversationCam( 4, "npc_far" )
Game.AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "dialogue_thinking" )
Game.AddAmbientPcAnimation( "dialogue_thinking" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
Game.SetDialogueInfo("bart","npd","phone3",0)
Game.SetDialoguePositions("m2_bart_sd","m2_npd_sd","m2_carstart_sd")
Game.CloseObjective()
Game.CloseStage()

Game.CloseMission()