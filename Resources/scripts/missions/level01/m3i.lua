local timeLimit = {60, 60}

local function L1M3EnableHints()
	if Mode.IsHard then
	Game.SetNumValidFailureHints( 5 )
	else
	Game.SetNumValidFailureHints( 4 )
	end
end

local function StandardConditions()
	Game.AddCondition("outofvehicle")
		Game.SetCondTime( 10000 )
	Game.CloseCondition()
	Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
	Game.CloseCondition()
end

local function KbossCars()
	Game.AddStageVehicle("krust_v", "m3_raceai_1", "NULL", "Missions\\level01\\m3_race1st.con", "krusty")
	Game.AddStageVehicle("krust2","m3_raceai_2","NULL","Missions\\level01\\m3_race2nd.con","male1")
	Game.AddStageVehicle("kboss","m3_raceai_3","NULL","Missions\\level01\\m3_race3rd.con","male4")
end

Game.SelectMission("m3")

	Game.SetMissionResetPlayerInCar("m3_carstart_sd")
	Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")
	Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
	Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade
	Game.SetPedsEnabled(1)

	Game.UsePedGroup(5)
	L1M3EnableHints()

	Game.AddStage()
		Game.SetStageMessageIndex(12)
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.SetStageMessageIndex(3)
		Game.SetHUDIcon("w_kbur2")
		Game.AddObjective("goto")
			Game.SetDestination("m3_higher_district", "carsphere")
		Game.CloseObjective()
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
		Game.SetHUDIcon("w_kstuff")	--can't decide whether to use a single item icon or a bunch icon.
		Game.AddObjective("delivery", "neither")
			local itemList = {"blend", "pills", "r_choco", "is_comic", "jeans"}
			local x = 1
			for i=1, 25 do
				Game.AddCollectible("m3_item_" .. i, itemList[x])
				x = x + 1
				if x > #itemList then
					x = 1
				end
			end
		Game.CloseObjective()
		Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		timeLimit[Mode.NormalMode] = 110
		timeLimit[Mode.HardMode] = 75
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageMessageIndex(5)
		Game.SetHUDIcon("w_kbur2")
		Game.AddObjective("goto")
			Game.SetDestination("m3_kburger_tape","carsphere")
		Game.CloseObjective()
		Game.AddStageTime(15)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_sign")
		Game.SetStageMessageIndex(6)
		Game.AddObjective("goto", "neither")
			Game.SetDestination("m3_tape_2","triggersphere")
			Game.MustActionTrigger()
			Game.SetCollectibleEffect("none")
		Game.CloseObjective()
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("popcorn")
	Game.CloseStage()
	
	Game.AddStage()
		Game.ResetStageHitAndRun()
		Game.SetStageAllowMissionCancel(0)
		Game.NoTrafficForStage()
		Game.StartCountdown("")
			Game.AddToCountdownSequence("", 5000)
		--Game.AddStageCharacter("bart", "m3_bart_tape1", "", "current", "m3_car_tape1")
		Game.AddObjective("timer")
			Game.SetDurationTime(5.2)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageMessageIndex(7)
		Game.SetHUDIcon("w_stad")
		Game.SetMaxTraffic(5)
		--Game.AddStageCharacter("bart", "", "", "current", "m3_car_tape1")
		Game.AddObjective("goto")
			Game.SetDestination("m3_stadium_sd","carsphere")
			Game.AddNPC("krusty", "m3_krusty_sd")
		Game.CloseObjective()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		timeLimit[Mode.NormalMode] = 45
		timeLimit[Mode.HardMode] = 35
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetStageMessageIndex(2)
		Game.SetHUDIcon("w_krust")
		Game.AddObjective("talkto")
			Game.AddNPC("krusty", "m3_krusty_sd")
			for i= 1,4 do
			Game.AddObjectiveNPCWaypoint("krusty" , "m3_krustywalk_"..i)
			end
		Game.SetTalkToTarget("krusty", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()
	Game.AddStage("locked", "car", "")
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
		Game.SetStageMessageIndex(8)
		Game.SetHUDIcon("w_park")
		Game.AddObjective("goto")
			Game.AddNPC("krusty", "m3_krusty_sd")
			Game.SetDestination("m3_park","carsphere")
		Game.CloseObjective()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		timeLimit[Mode.NormalMode] = 35
		timeLimit[Mode.HardMode] = 25
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_statue")
		Game.SetStageMessageIndex(9)
		Game.AddObjective("goto")
			Game.RemoveNPC("krusty")
			Game.SetDestination("m3_tape_1","audiotape")
			Game.MustActionTrigger()
			Game.SetCollectibleEffect("none")
		Game.CloseObjective()
		Game.AddStageTime(-1)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("doing")
	Game.CloseStage()

	Game.AddStage()
		Game.ResetStageHitAndRun()
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "o", 3000 )
		Game.SetStageMessageIndex(12)
		Game.SetStageAllowMissionCancel(0)
		Game.AddObjective("timer")
			Game.RemoveNPC("krusty")
			Game.SetDurationTime(3.5)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("w_stad")
		Game.AddStageVehicle("krust_v", "m3_krustycar_stadium", "NULL", "Missions\\level01\\m3_race1st.con", "krusty")
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m3_stadium_big","carsphere")
		Game.CloseObjective()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		timeLimit[Mode.NormalMode] = 30
		timeLimit[Mode.HardMode] = 25
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageMessageIndex(10)
		Game.SetHUDIcon("w_krust")	--need krust_v icon
		Game.ActivateVehicle("krust_v", "NULL", "evade")
		Game.AddStageVehicle("krust2","m3_raceai_2","NULL","Missions\\level01\\m3_race2nd.con","male1")
		Game.AddStageVehicle("kboss","m3_raceai_3","NULL","Missions\\level01\\m3_race3rd.con","male4")
		for i=1, 2 do
			Game.AddStageWaypoint("m3_follow_wp" .. i)
		end
		Game.SetMaxTraffic(2)
		Game.AddObjective("follow")
			Game.SetObjTargetVehicle("krust_v")
		Game.CloseObjective()
		Game.AddCondition( "followdistance" )
			Game.SetFollowDistances( 0, 150 )
			Game.SetCondTargetVehicle( "krust_v" )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetIrisWipe(0.1)
	Game.CloseStage()
	
	Game.AddStage() -- Use Function "KbossCars()"
		Game.NoTrafficForStage()
		KbossCars()
		Game.AddStageCharacter("bart", "", "", "current", "m3_race_restart")
		Game.StartCountdown("count")
			Game.AddToCountdownSequence( "", 1000 )
		Game.AddObjective("timer")
			Game.SetDurationTime(0.5)
		Game.CloseObjective()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage("locked", "car", "")
		Game.NoTrafficForStage()
		Game.SetStageMessageIndex(10)
		KbossCars()
		Game.StartCountdown("count")
			Game.AddToCountdownSequence( "", 1000 )
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.NoTrafficForStage()
		KbossCars()
		Game.StartCountdown("count")
			Game.AddToCountdownSequence( "", 1000 )
		Game.AddObjective("timer")
			Game.SetDurationTime(0.5)
		Game.CloseObjective()
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()
		Game.SetCheckpointDynaLoadData("l5z4.p3d;l5r3.p3d;l5z3.p3d;")
		Game.SetCheckpointResetPlayerInCar("m3_race_restart" )
		Game.SetHUDIcon( "w_race" )	--could this be an icon of the audio tape?
		Game.SetStageMessageIndex(11)
		Game.DisableHitAndRun()
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "3", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "2", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "1", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "GO", 400 ) -- duration time in milliseconds
		Game.NoTrafficForStage()
		
		--[[
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
		]]
		
		Game.ActivateVehicle("krust_v","NULL","race")
		Game.ActivateVehicle("krust2","NULL","race")
		Game.ActivateVehicle("kboss","NULL","race")
		Game.SetVehicleAIParams("krust_v", -10, -9)
		Game.SetVehicleAIParams("krust2", -10, -9)
		Game.SetVehicleAIParams("kboss", -10, -9)
		
		if Mode.IsHard then
			Game.SetStageAIRaceCatchupParams("krust_v", 80, 0.7, 1.0, 1.3)
			Game.SetStageAIRaceCatchupParams("krust2", 80, 0.6, 1.0, 1.3)
			Game.SetStageAIRaceCatchupParams("kboss", 80, 0.7, 1.0, 1.2)
		else
			Game.SetStageAIRaceCatchupParams("krust_v", 80, 0.6, 0.9, 1.2)
			Game.SetStageAIRaceCatchupParams("krust2", 80, 0.5, 0.9, 1.2)
			Game.SetStageAIRaceCatchupParams("kboss", 80, 0.6, 0.9, 1.1)
		end
		
		for i= 1,6 do
		Game.AddStageWaypoint("m3_navwp_"..i)
		end
		Game.AddStageWaypoint( "m3_navwp_final2" )
		Game.AddObjective( "race", "neither")
			Game.AddNPC("krusty", "m3_krusty_sd")
			for i= 3,8 do
			Game.AddCollectible("m3_racewp_"..i,"carsphere")
			end
			Game.AddCollectible("m3_racewp_final2","audiotape")
		Game.CloseObjective()
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		StandardConditions()
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("kkk")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageAllowMissionCancel(0)
		Game.StartCountdown("count")
			Game.AddToCountdownSequence( "o", 7000 )
		Game.AddStageVehicle("krust_v", "m3_krustycar_end", "NULL", "Missions\\level01\\m3_race1st.con")
		Game.AddStageCharacter("bart", "m3_bart_end", "", "current", "m3_car_end")
		Game.AddObjective("timer")
			Game.RemoveDriver("krusty")
			Game.AddNPC("krusty", "m3_krusty_end")
			Game.SetDurationTime(7.0)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.EnableHitAndRun()
		Game.SetStageMessageIndex(13)
		Game.SetHUDIcon("w_krust")
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("krust_v", "m3_krustycar_end", "NULL", "Missions\\level01\\m3_race1st.con")
		Game.AddStageCharacter("bart", "m3_bart_end", "", "current", "m3_car_end")
		Game.AddObjective("hitpeds")
			Game.AddNPC("krusty", "m3_krusty_end")
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