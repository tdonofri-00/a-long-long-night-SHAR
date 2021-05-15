Game.SelectMission("m3")

	Game.SetMissionResetPlayerInCar("m3_carstart_sd")
	Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
	Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
	Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade
	Game.SetPedsEnabled(1)

	Game.UsePedGroup(5)

	if Mode.IsNormal then
	Game.AddStage()
		Game.SetStageMessageIndex(12)
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()
	end

	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.SetStageMessageIndex(03)
		Game.SetHUDIcon("w_kbur2")
		Game.AddObjective("goto")
			Game.SetDestination("m3_kburger","carsphere")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddCondition("outofvehicle")
		Game.SetCondTime( 10000 )
		Game.CloseCondition()
		end
		Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetStageTime(30)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(4)
		Game.SetHUDIcon("w_blend")
		Game.AddObjective("goto")
			Game.SetDestination("m3_item_1","blend")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		Game.AddStageTime(-1)
			Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(7)
		Game.SetHUDIcon("w_dmv")
		Game.AddObjective("goto")
			Game.SetDestination("m3_dmv","carsphere")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		if Mode.IsNormal then
		Game.SetStageTime(70)
		else
		Game.SetStageTime(60)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(5)
		Game.SetHUDIcon("w_pills")
		Game.AddObjective("goto")
			Game.SetDestination("m3_item_2","pills")
			Game.SetCollectibleEffect("wrench_collect")
			Game.SetCollectibleSoundEffect("level_5_pickup_sfx")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddStageTime(5)
		else
		Game.AddStageTime(-1)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(8)
		Game.SetHUDIcon("w_moes")
		Game.AddObjective("goto")
			Game.SetDestination("m3_moes","carsphere")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetStageTime(30)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(6)
		Game.SetHUDIcon("w_laser")
		Game.AddObjective("goto")
			Game.SetDestination("m3_item_3","lasergun")
			Game.SetCollectibleEffect("wrench_collect")
			Game.SetCollectibleSoundEffect("level_1_pickup_sfx")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddStageTime(5)
		else
		Game.AddStageTime(-1)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("w_stad")
		Game.AddObjective("goto")
			Game.SetDestination("m3_stadium_sd","carsphere")
			Game.AddNPC("krusty", "m3_krusty_sd")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		if Mode.IsNormal then
		Game.SetStageTime(35)
		else
		Game.SetStageTime(25)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(02)
		Game.SetHUDIcon("w_krust")
		Game.AddObjective("talkto")
			Game.AddNPC("krusty", "m3_krusty_sd")
			for i= 1,4 do
			Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_"..i)
			end
		Game.SetTalkToTarget("krusty", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()
Output([[
    AddStage("locked", "car", "");
]])
		Game.SetStageMessageIndex(9)
		Game.AddObjective("dialogue")
			Game.AddNPC("krusty", "m3_krusty_sd")
			Game.AmbientAnimationRandomize( 1, 0 )
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.SetConversationCam( 0, "pc_far" )
			Game.SetConversationCam( 1, "npc_near" )
			Game.SetConversationCam( 2, "pc_far" )
			Game.SetConversationCam( 3, "npc_far" )
			Game.SetConversationCam( 4, "pc_near" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_hands_in_air" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_cross_arms" )
			Game.AddAmbientPcAnimation( "dialogue_shake_hand_in_air" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_hands_on_hips" )
			Game.AddAmbientPcAnimation( "none" )
			Game.SetCamBestSide("m3_bestside")
			Game.SetDialogueInfo("bart","krusty","krusty",0)
			Game.SetDialoguePositions("m3_bart_talk","m3_krusty_talk","m3_carstart_sd")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()	-- empty stage because objective text doesn't show after locked stage message.
		Game.AddObjective("timer")
			Game.SetDurationTime(0.5)
		Game.CloseObjective()
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()	--what are the odds someone restarts here?
		Game.SetCheckpointDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
		Game.SetCheckpointResetPlayerOutCar("m3_bart_talk", "m3_restart1")
		Game.SetStageMessageIndex(12)
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		if Mode.IsHard then
			Game.SetStageTime(15)
			Game.AddCondition("timeout")
			Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()	--i don't want to hear "thunk thunk" when i restart
		Game.SetCheckpointDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
		Game.SetCheckpointResetPlayerInCar("m3_restart1")
		Game.SetStageMessageIndex(14)
		Game.SetHUDIcon("w_park")
		Game.AddObjective("goto")
			Game.SetDestination("m3_park","carsphere")
			Game.AddNPC("npd", "m3_npd")
			Game.RemoveNPC("krusty")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		end
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetStageTime(30)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_statue")
		Game.SetStageMessageIndex(15)
		Game.AddObjective("goto")
			Game.AddNPC("npd","m3_npd")
			Game.SetDestination("m3_tape_1","triggersphere")
			Game.MustActionTrigger()
			Game.SetCollectibleEffect("none")
		Game.CloseObjective()
		if Mode.IsHard then
		Game.AddStageTime(10)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		end
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("doing")
	Game.CloseStage()

	Game.AddStage()
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "o", 3000 )
		Game.SetStageMessageIndex(12)
		Game.SetStageAllowMissionCancel(0)
		Game.AddObjective("timer")
			Game.SetDurationTime(3.5)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()

	if Mode.IsNormal then
	Game.AddStage()
		Game.SetStageMessageIndex(12)
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()
	end

	Game.AddStage()
		--Game.SetStageMessageIndex(10)
		--Game.SetHUDIcon("w_statio")
		Game.SetStageMessageIndex(03)
		Game.SetHUDIcon("w_kbur2")
		Game.AddObjective("goto")
			Game.SetDestination("m3_kburger_tape","carsphere")
			Game.RemoveNPC("krusty")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.SetStageTime(40)
		else
		Game.SetStageTime(30)
		end
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_sign")
		Game.SetStageMessageIndex(16)
		Game.AddObjective("goto")
			Game.AddNPC("npd","m3_npd")
			Game.SetDestination("m3_tape_2","triggersphere")
			Game.MustActionTrigger()
			Game.SetCollectibleEffect("none")
		Game.CloseObjective()
		if Mode.IsHard then
		Game.AddStageTime(10)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		end
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("kkk")
	Game.CloseStage()

	Game.AddStage()
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "o", 7000 )
		Game.SetStageAllowMissionCancel(0)
		Game.AddObjective("timer")
		Game.SetDurationTime(7.0)
		Game.StayInBlack()
		Game.CloseObjective()
		Game.ShowStageComplete() -- Checkpoint Notification
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()
		Game.SetCheckpointDynaLoadData("l5z4.p3d;l5r3.p3d;l5r4.p3d;")
		Game.SetCheckpointResetPlayerInCar("m3_racestart" )
		Game.SetHUDIcon( "w_race" )
		Game.SetStageMessageIndex(17)
--		Game.DisableHitAndRun()
		Game.AddStageCharacter("bart", "", "", "current", "m3_racestart")
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "3", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "2", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "1", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "GO", 400 ) -- duration time in milliseconds
		Game.NoTrafficForStage()
		Game.AddStageVehicle(Car2,"m3_raceai_3","race","Missions\\level01\\m3_race1st.con","krusty")
		Game.SetVehicleAIParams(Car2, -10, -9)
		Game.AddStageVehicle(Car,"m3_raceai_2","race","Missions\\level01\\m3_race2nd.con","male1")
		Game.SetVehicleAIParams(Car, -10, -9)
		Game.AddStageVehicle(Car3,"m3_raceai_1","race","Missions\\level01\\m3_race3rd.con","male4")
		Game.SetVehicleAIParams(Car3, -10, -9)
		
		if Mode.IsHard then
			Game.SetVehicleAIParams(Car, 50, 51)
			Game.SetVehicleAIParams(Car2, 50, 51)
			Game.SetVehicleAIParams(Car3, 50, 51)
		else
			Game.SetVehicleAIParams(Car, -10, -9)
			Game.SetVehicleAIParams(Car2, -10, -9)
			Game.SetVehicleAIParams(Car3, -10, -9)
		end
		
		for i= 1,6 do
		Game.AddStageWaypoint("m3_navwp_"..i)
		end
		
		--for i, x in pairs({"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"})
		
		Game.AddStageWaypoint( "m3_navwp_final" )
		Game.AddObjective( "race")
			Game.AddNPC("krusty", "m3_krusty_sd")
			for i= 1,13 do
			Game.AddCollectible("m3_racewp_"..i,"carsphere")
			end
			Game.AddCollectible("m3_racewp_final","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		--[[
		--pretty sure this will cause problems
		Game.AddCondition("race")
			Game.SetCondTargetVehicle(Car,Car2,Car3)
		Game.CloseCondition()
		]]
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.SetFadeOut(1.0)
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageAllowMissionCancel(0)
		Game.AddStageCharacter("bart", "m3_bart_talk", "", "current", "m3_carstart_sd")
		Game.AddObjective("timer")
			Game.AddNPC("krusty", "m3_krusty_talk")
			Game.SetDurationTime(1)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(18)
		Game.SetHUDIcon("w_krust")
		Game.SetMaxTraffic(5)
		Game.AddObjective("hitpeds")
			Game.AddNPC("krusty", "m3_krusty_talk")
			Game.AddObjTargetModel("krusty")
			Game.SetObjTotal(3)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()