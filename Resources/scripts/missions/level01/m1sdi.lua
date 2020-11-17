Game.SelectMission("m1sd")

Game.SetMissionResetPlayerOutCar("m1_brt_loc","m1_car_loc")
Game.SetDynaLoadData("l5z4.p3d;l5r3.p3d;l5r4.p3d;")

Game.UsePedGroup(5)

Game.AddStage()
Game.SetStageMessageIndex(2)
Game.SetHUDIcon("w_mono")
Game.AddObjective("goto")
Game.SetDestination("m1_monorail","carsphere")
Game.AddNPC("snake","m1_snk_loc")
Game.CloseObjective()
Game.CloseStage()

Game.AddStage(0)
Game.RESET_TO_HERE()
Game.SetStageMessageIndex(03)
Game.SetHUDIcon("w_snake")
Game.AddObjective("talkto")
Game.AddNPC("snake", "m1_snk_loc")
Game.AddObjectiveNPCWaypoint("snake" , "m1_snakewalk_1")
Game.AddObjectiveNPCWaypoint("snake" , "m1_snakewalk_2")
Game.AddObjectiveNPCWaypoint("snake" , "m1_snakewalk_3")
Game.AddObjectiveNPCWaypoint("snake" , "m1_snake_loc")
Game.SetTalkToTarget("snake", 0, 0)
Game.AddStageVehicle("snake_v","m1_snk_car","NULL","Missions\\level05\\M1chase.con")
Game.CloseObjective()
Game.CloseStage()

Game.AddStage(1)
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
Game.AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "dialogue_thinking" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
Game.SetDialogueInfo("bart","snake","mugging",0)
Game.SetDialoguePositions("m1_bart_sd","m1_snake_sd","m1_car_loc")
Game.CloseObjective()
Game.CloseStage()

Game.CloseMission()