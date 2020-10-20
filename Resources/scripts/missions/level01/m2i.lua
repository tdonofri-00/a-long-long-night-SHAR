Game.SelectMission("m2")

Game.SetMissionResetPlayerOutCar("m2_bartstart","m2_carstart")
Game.SetDynaLoadData("l5z3.p3d;l5r2.p3d;l5r3.p3d;")

Game.AddStage()
Game.RESET_TO_HERE()
Game.SetStageMessageIndex(12)
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
Game.SetStageMessageIndex(3)
Game.SetHUDIcon("w_hotel")
Game.AddObjective("goto")
Game.SetDestination("m2_hotel","carsphere")
Game.RemoveNPC("npd")
Game.AddStageVehicle("cLimo","m2_limostart","NULL","Missions\\level07\\M2chase.con","mobstr")
Game.CloseObjective()
if Mode.IsNormal then
Game.SetStageTime(35)
else
Game.SetStageTime(25)
end
Game.AddCondition("timeout")
Game.CloseCondition()
Game.CloseStage()

Game.AddStage()
Game.SetHUDIcon("w_hotel")
Game.SetStageMessageIndex(8)
Game.AddObjective("goto")
Game.AddNPC("npd","m2_npd2")
Game.SetDestination("m2_wedding_1","triggersphere")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.CloseObjective()
Game.CloseStage()

Game.AddStage(1) -- THOMAS DIALOG AAAAAAAAAAA
Game.AddObjective("dialogue")
Game.AddNPC("npd","m2_npd2")
Game.AmbientAnimationRandomize( 1, 0 )
Game.AmbientAnimationRandomize( 0, 0 )
Game.SetConversationCam( 0, "npc_near" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientNpcAnimation( "none" )
Game.AddAmbientPcAnimation( "none" )
Game.AddAmbientPcAnimation( "dialogue_scratch_head" )
Game.AddAmbientPcAnimation( "none" )
Game.SetDialogueInfo("bart","npd","wedding",0)
Game.CloseObjective()
Game.CloseStage()

Game.AddStage() -- the reason the glass sound effect is bart dialog is because it's easier lol
-- considering the stage is faded out
-- Basically if I use a FadeOut command it's because what I wanted to create just isn't feasible in MFK scripts
-- even with ASF commands
Game.SetStageMessageIndex(4)
Game.SetHUDIcon("w_limo")
Game.AddObjective("goto")
Game.SetDestination("m2_steal","triggersphere")
Game.RemoveNPC("npd")
Game.MustActionTrigger()
Game.SetCollectibleEffect("none")
Game.SetFadeOut(0.1)
Game.CloseObjective()
Game.SetCompletionDialog("glass")
Game.CloseStage()

Game.AddStage()
Game.SetStageMessageIndex(10)
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
Game.SetStageMessageIndex(05)
Game.SetHUDIcon("w_park")
Game.AddObjective("goto")
Game.SetDestination("m2_park","carsphere")
Game.ActivateVehicle("cLimo","NULL","chase")
Game.TurnGotoDialogOff()
Game.SetCollectibleEffect("none")
Game.SetFadeOut(0.1)
Game.CloseObjective()
Game.AddCondition("followdistance")
Game.SetFollowDistances(0, 80)
Game.SetCondTargetVehicle("cLimo")
Game.CloseCondition()
Game.AddCondition("outofvehicle")
Game.SetCondTime( 1000 )
Game.CloseCondition()
Game.CloseStage()

Game.AddStage() -- teleports the player from camera to playable stage
--Game.DisableTrigger("some_camera_locator")
Game.AddObjective("timer")
Game.SetStageAllowMissionCancel(0)
Game.DisableHitAndRun()
Game.StayInBlack()
Game.SetDurationTime(0.1)
Game.AddStageCharacter("bart", "spawn_player_to_cam_here", "", "current", "m2_car")
Game.CloseObjective()
Game.StageStartMusicEvent("M2_drama")
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage(0) -- AAAAAAAAAAA CINEMATICS
Game.CHECKPOINT_HERE()
Game.SetCheckpointDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
Game.SetCheckpointResetPlayerOutCar( "m2_bart_escape", "m2_carstart" )
Game.SetStageAllowMissionCancel(0)
Game.AddStageCharacter("bart", "spawn_player_to_cam_here", "", "current", "m2_car")
Game.SetMaxTraffic(0)
Game.AddStageWaypoint("m2_wp_1")
Game.AddStageWaypoint("m2_wp_2")
Game.AddStageWaypoint("m2_wp_3")
Game.AddStageWaypoint("m2_wp_4")
Game.AddStageWaypoint("m2_wp_5")
Game.AddObjective("timer")
Game.AddStageVehicle("cLimo2","m2_limocam","evade","Missions\\level04\\M7Evade.con","mobstr") -- <---------- Does anything other than "chase" work without crashing the game?
Game.AddStageVehicle("cNerd","m2_nerdcam","evade","Missions\\level04\\M7Evade.con","male2")
Game.SetDurationTime(7.5)
Game.SetFadeOut(0.1)
-- for some reason if I use anything other then "chase" this stage crashes the game
-- this causes the AI to not follow the same path 100% of the time
-- this is really freaking annoying lol
Game.CloseObjective()
--Game.StageStartMusicEvent("M2_drama")
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage() -- teleports the player from camera to playable stage
Game.DisableTrigger("some_camera_locator") -- THIS LINE IS NEEDED FOR EVERY STAGE AFTER "AAAAAAAAAAA CINEMATICS"
Game.AddObjective("timer")
Game.SetDurationTime(1)
Game.AddStageCharacter("bart", "m2_bart_escape", "", "current", "m2_car")
Game.CloseObjective()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.SetIrisWipe(3.5)
Game.CHECKPOINT_HERE()
-- Obligatory checkpoint because players new to this stage have only trial and error to find inside/outside triggers
-- I'd prefer not to make players rage like Donut Mod Hellfish lmao
Game.SetCheckpointDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
Game.SetCheckpointResetPlayerOutCar( "m2_bart_escape", "m2_carstart" )
Game.DisableTrigger("some_camera_locator")
Game.AddStageCharacter("bart", "m2_bart_escape", "", "current", "m2_carstart")
Game.SetHUDIcon("w_park") -- I need to make a new icon. this one is just plain bad
Game.SetStageMessageIndex(6)
Game.AddObjective("goto")
-- I wonder if theres a better way to distinguish NPCS near the inside/outside triggers
-- Because there is no purpose for them other than immersion at this point kek
Game.AddNPC("male2","m2_crowd_npc1")
Game.AddNPC("olady2","m2_crowd_npc2")
Game.AddNPC("male4","m2_crowd_npc3")
Game.AddNPC("fem3","m2_crowd_npc4")
Game.SetDestination("m2_escape","triggersphere")
Game.SetCollectibleEffect("none")
Game.SetFadeOut(0.1)
if Mode.IsHard then
Game.SetStageTime(30)
Game.AddCondition("timeout")
Game.CloseCondition()
end
-- Still an easy timer since this whole thing is basically trial and error
Game.CloseObjective()
Game.AddCondition("insidetrigger")
Game.SetCondTrigger("m2_crowd1")
Game.SetCondThreshold(3)
Game.SetCondMessageIndex(9)
Game.SetCondDecay(3, 2)
Game.SetCondSound("gag_clnk","enter_trigger")
Game.SetCondSound("countdown_beeps","inside_trigger",1,5)
Game.SetCondSound("d_bcrash_brt_02","exit_trigger")
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.DisableTrigger("some_camera_locator")
Game.AddObjective("timer")
Game.SetDurationTime(1)
Game.AddStageCharacter("bart", "m2_bart_free", "", "current", "m2_car") -- This is just to teleport the current car to the player
-- It really wouldn't make sense that you're sneaking out of the park if your car is right next to ya
-- Immersion in SHAR modding is kinda taboo lmao
Game.StayInBlack()
Game.CloseObjective()
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.DisableTrigger("some_camera_locator")
Game.SetStageMessageIndex(12)
Game.AddObjective("getin")
Game.SetObjTargetVehicle("current")
Game.AddStageVehicle("cNerd","m2_bestman","NULL","Missions\\level01\\M2chase.con","male2")
Game.CloseObjective()
if Mode.IsHard then
Game.AddStageTime(10)
Game.AddCondition("timeout")
Game.CloseCondition()
end
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage()
Game.DisableTrigger("some_camera_locator")
Game.ShowStageComplete()
Game.SetHUDIcon( "w_bestmn" )
Game.SetStageMessageIndex(7)
Game.SetStageTime(30)
Game.ActivateVehicle("cNerd","NULL","chase")
Game.AddObjective("losetail")
Game.SetObjTargetVehicle("cNerd")
if Mode.IsNormal then
Game.SetObjDistance(150)
else
Game.SetObjDistance(160)
end
-- unsure if there is a more efficient way to remove the extra npcs
Game.RemoveNPC("male2")
Game.RemoveNPC("male4")
Game.RemoveNPC("olady2")
Game.RemoveNPC("fem3")
Game.CloseObjective()
Game.AddCondition("timeout")
Game.CloseCondition()
Game.StageStartMusicEvent("M2_drama")
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.AddStage("final")
Game.DisableTrigger("some_camera_locator")
Game.SetStageMessageIndex(3)
Game.SetHUDIcon("w_hotel")
Game.AddObjective("goto")
Game.SetDestination("m2_hotel","carsphere")
Game.CloseObjective()
Game.StageStartMusicEvent("M2_start")
Game.SetStageMusicAlwaysOn()
Game.CloseStage()

Game.CloseMission()