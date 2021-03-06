-- TODO
-- * Dialog Posititons for last stage

Game.SelectMission("m0")

Game.SetMissionResetPlayerInCar("m0_carstart_2")
Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade

Game.UsePedGroup(5)

Game.AddStage()
Game.SetStageMessageIndex(02)
--Game.AddStageCharacter("bart", "m0_bart_loc2", "", "current", "m0_carstart_2")
Game.AddObjective("getin")
Game.SetObjTargetVehicle("current")
Game.CloseObjective()
if Mode.IsHard then
Game.SetStageTime(10)
Game.AddCondition("timeout")
Game.CloseCondition()
end
Game.CloseStage()

Game.AddStage()
Game.RESET_TO_HERE()
Game.SetStageMessageIndex(07)
Game.SetHUDIcon("w_kburg")
Game.AddObjective("goto")
Game.SetDestination("m0_kburger1","carsphere")
Game.CloseObjective()
Game.AddCondition("outofvehicle")
Game.SetCondTime( 10000 )
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
if Mode.IsNormal then
Game.SetStageTime(30)
else
Game.SetStageTime(20)
end
Game.AddCondition("timeout")
Game.CloseCondition()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_teen")
Game.SetStageMessageIndex(08)
Game.AddObjective("goto")
Game.AddNPC("npd","m0_npd")
Game.SetDestination("m0_order_loc","triggersphere")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.CloseObjective()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.AddObjective("dialogue")
Game.AddNPC("npd","m0_npd")
Game.AmbientAnimationRandomize( 1, 0 )
Game.AmbientAnimationRandomize( 0, 0 )
Game.SetConversationCam( 0, "npc_near" )
Game.SetConversationCam( 1, "npc_near" )
Game.SetConversationCam( 2, "npc_near" )
Game.SetConversationCam( 3, "npc_near" )
Game.SetConversationCam( 4, "npc_near" )
Game.SetConversationCam( 5, "npc_near" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "none" )
Game.SetDialogueInfo("bart","npd","order",0)
Game.SetDialoguePositions("m0_bart_kbcam","m0_npd","m0_kburg_car")
Game.CloseObjective()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.SetStageMessageIndex(03)
Game.SetHUDIcon("w_kbmeal")
Game.AddObjective("goto")
Game.SetDestination("m0_kburger2","kmeal")
Game.CloseObjective()
if Mode.IsHard then
Game.SetStageTime(10)
Game.AddCondition("timeout")
Game.CloseCondition()
end
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_car")
Game.SetStageMessageIndex(02)
Game.AddObjective("getin")
Game.SetObjTargetVehicle("current")
Game.CloseObjective()
if Mode.IsHard then
Game.SetStageTime(10)
Game.AddCondition("timeout")
Game.CloseCondition()
end
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.SetStageMessageIndex(05)
Game.SetHUDIcon("w_save")
Game.AddObjective("goto")
Game.SetDestination("m0_trynsave","carsphere")
Game.CloseObjective()
Game.AddCondition("outofvehicle")
Game.SetCondTime( 10000 )
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
if Mode.IsHard then
Game.SetStageTime(40)
else
Game.AddStageTime(45)
end
Game.AddCondition("timeout")
Game.CloseCondition()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage(0)
Game.SetStageMessageIndex(6)
Game.SetHUDIcon( "w_fire" )
Game.AddObjective("delivery", "neither")
Game.AddCollectible("m0_fire5","i_firewk")
Game.AddCollectible("m0_fire3","i_firewk")
Game.AddCollectible("m0_fire4","i_firewk")
Game.AddCollectible("m0_fire2","i_firewk")
Game.AddCollectible("m0_fire","i_firewk")
Game.AddCollectible("m0_fire6","i_firewk")
Game.AddCollectible("m0_fire7","i_firewk")
Game.AddCollectible("m0_fire8","i_firewk")
Game.AddCollectible("m0_fire9","i_firewk")
Game.AddCollectible("m0_fire10","i_firewk")
Game.AddCollectible("m0_fire11","i_firewk")
Game.SetCollectibleEffect("wrench_collect")
Game.CloseObjective()
if Mode.IsNormal then
Game.SetStageTime(35)
else
Game.SetStageTime(25)
end
Game.AddCondition("timeout")
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
Game.SetStageMusicAlwaysOn()
Game.ShowStageComplete()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_fone")
Game.SetStageMessageIndex(01)
Game.AddObjective("goto")
Game.SetDestination("m0_fakeloc","carsphere")
Game.AddStageVehicle("homer_v","m0_homer","NULL","Missions\\level01\\M0chase.con", "homer")
Game.CloseObjective()
Game.AddCondition("outofvehicle")
Game.SetCondTime( 10000 )
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
if Mode.IsHard  then
Game.SetStageTime(45)
else
Game.SetStageTime(60)
end
Game.AddCondition("timeout")
Game.CloseCondition()
Game.SetCompletionDialog("dad","homer")
Game.CloseStage()

Game.AddStage()
Game.ShowStageComplete()
Game.SetHUDIcon( "w_homcar" )
Game.SetStageMessageIndex(10)
if Mode.IsNormal then
Game.AddStageTime(-1)
else
Game.AddStageTime(10)
end
Game.ActivateVehicle("homer_v","NULL","chase")
Game.AddObjective("losetail")
Game.SetObjTargetVehicle("homer_v")
if Mode.IsNormal then
Game.SetObjDistance(135)
else
Game.SetObjDistance(150)
end
Game.CloseObjective()
Game.AddCondition("timeout")
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
Game.SetCompletionDialog("dad2","homer")
Game.CloseStage()

Game.AddStage()
Game.SetStageMessageIndex(1)
Game.SetHUDIcon("w_fone")
Game.AddObjective("goto")
Game.SetDestination("m0_final_loc","carsphere")
Game.CloseObjective()
Game.AddCondition("outofvehicle")
Game.SetCondTime( 10000 )
Game.CloseCondition()
Game.AddCondition( "damage" )
Game.SetCondMinHealth( 0.0 )
Game.SetCondTargetVehicle( "current" )
Game.CloseCondition()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_fone")
Game.SetStageMessageIndex(04)
Game.AddObjective("goto")
Game.AddNPC("npd","m0_npd_cam")
Game.SetDestination("m0_phone_loc","triggersphere")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.CloseObjective()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage("final")
Game.AddObjective("dialogue")
Game.AddNPC("npd","m0_npd_2")
Game.AmbientAnimationRandomize( 1, 0 )
Game.AmbientAnimationRandomize( 0, 0 )
Game.SetConversationCam( 0, "npc_far" )
Game.SetConversationCam( 1, "npc_far" )
Game.AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "dialogue_thinking" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
Game.SetDialogueInfo("bart","npd","phone2",0)
-- for some reason the line below crashes the game?
-- TODO - fix this line below before release
--Game.SetDialoguePositions("m0_bart_cam","m0_npd_cam","m0_carstart_2")
Game.CloseObjective()
Game.CloseStage()

Game.CloseMission()