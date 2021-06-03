local timeLimit = {60, 60}

local function StandardConditions()
	Game.AddCondition("outofvehicle")
		Game.SetCondTime( 10000 )
	Game.CloseCondition()
	Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
	Game.CloseCondition()
end

local function TrafficDifficulty()
	if Mode.IsNormal then
	Game.SetMaxTraffic(2)
	else
	Game.SetMaxTraffic(3)
	end
end

Game.SelectMission("m4")

	Game.SetMissionResetPlayerInCar("m4_homercar_sd")
	Game.SetDynaLoadData("l5z2.p3d;l5r1.p3d;l5r2.p3d;")
	Game.InitLevelPlayerVehicle("homer_v","m4_homercar_sd","OTHER")
	Game.SetForcedCar()
	
	Game.StreetRacePropsLoad("m4_graffiti.p3d;")
	Game.StreetRacePropsUnload("m4_graffiti.p3d:")
	
	Game.SetPedsEnabled(1)
	Game.SetParkedCarsEnabled(1)

	Game.AddStage()
		Game.DisableTrigger("m4_enable_graffiti")	--great. i got to add this to every fucking stage.
		Game.SetHUDIcon("w_save")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(4)
		Game.AddStageVehicle("cDuff","m4_duffsmall_loc","NULL","Missions\\level01\\M4dump.con", "jasper")
		Game.AddObjective("goto")
			Game.SetDestination("m4_trynsave","carsphere")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		timeLimit[Mode.NormalMode] = 40
		timeLimit[Mode.HardMode] = 30
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_duff")
		Game.SetStageMessageIndex(5)
		TrafficDifficulty()
		Game.ActivateVehicle("cDuff","NULL","evade")
		Game.AddStageVehicle("cPolic3","m4_ambush2","NULL","Missions\\level01\\M4chase.con", "wiggum")
		for k, v in pairs({1,3,4,6,7})do
		Game.AddStageWaypoint("m4_waypoint"..v.."")
		end
		Game.AddStageWaypoint("m4_duffrealpoint") 
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("cDuff")
			for i=1, 4 do
				Game.AddCollectible("m4_beer" .. i, "coolr")
			end
			Game.BindCollectibleTo(0, 0)
			Game.BindCollectibleTo(1, 1)
			Game.BindCollectibleTo(2, 2)
			Game.BindCollectibleTo(3, 3)
		Game.CloseObjective()
		Game.AddCondition("followdistance")
			if Mode.IsNormal then
			Game.SetFollowDistances( 0 , 150)
			else
			Game.SetFollowDistances( 0 , 135)
			end
			Game.SetCondTargetVehicle("cDuff")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.DisableTrigger("m4_enable_graffiti")	--never mind. just these two.
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.ActivateVehicle("cDuff","","evade")
		Game.ActivateVehicle("cPolic3","NULL","evade") -- Police chasing Duff Truck
		Game.AddStageVehicle("cDuff2","m4_duffbig_loc","NULL","Missions\\level01\\M4dump2.con", "moleman")	--jimbo being used for later
		Game.AddStageWaypoint("m4_duffrealpoint")
		Game.AddObjective("goto")
			--Game.SetDestination("m4_moestavern","carsphere")
			Game.SetDestination("m4_duffbig_chase_start","carsphere")
		Game.CloseObjective()
		StandardConditions()
		timeLimit[Mode.NormalMode] = 50
		timeLimit[Mode.HardMode] = 40
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.ShowStageComplete()	--Checkpoint Notif
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()
		Game.SetCheckpointDynaLoadData("l5r1.p3d;l5z1.p3d;l5r4.p3d;")
		Game.SetCheckpointResetPlayerInCar("m4_restart1" )
		Game.SetHUDIcon("w_duff2")
		Game.SetStageMessageIndex(7)
		TrafficDifficulty()
		Game.AddStageVehicle("scorp_v","m4_bully_car","NULL","Missions\\level01\\M4dest.con", "kearney")
		Game.ActivateVehicle("cDuff2","NULL","target")
		Game.SetStageAITargetCatchupParams("cDuff2", 9998, 9999)
		Game.AddStageWaypoint("m4_waypoint1b")
		Game.AddStageWaypoint("m4_waypoint2b")
		Game.AddStageWaypoint("m4_waypoint3b")
		Game.AddStageWaypoint("m4_waypoint4b")
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("cDuff2")
			for i=1, 8 do
				Game.AddCollectible("m4_beer" .. i,"coolr")
			end
			Game.AddStageVehicleCharacter("scorp_v", "jimbo", "pl")
		Game.CloseObjective()
		Game.AddCondition("race")
			Game.SetCondTargetVehicle("cDuff2")
		Game.CloseCondition()
		StandardConditions()
		Game.ShowStageComplete()
	Game.CloseStage()

--[[
	Game.AddStage()
		Game.SetStageMessageIndex(8)
		Game.SetHUDIcon("w_duff2")
		Game.ActivateVehicle("cDuff2","","target")
		Game.AddStageWaypoint("m4_waypoint1c")
		Game.AddStageWaypoint("m4_waypoint2c")
		Game.AddStageWaypoint("m4_waypoint3c")
		Game.AddStageWaypoint("m4_waypoint4c")
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("cDuff2")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		if Mode.IsHard then
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, 125)
			Game.SetCondTargetVehicle("cDuff2")
		Game.CloseCondition()
		Game.SetStageTime(90)
		else
		Game.SetStageTime(110)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.ShowStageComplete()
	Game.CloseStage()
]]

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.AddStageVehicle("scorp_v","m4_bully_car","NULL","Missions\\level01\\M4dest.con", "kearney")
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m4_bully_trigger","carsphere")
		Game.CloseObjective()
		StandardConditions()
		timeLimit[Mode.NormalMode] = 40
		timeLimit[Mode.HardMode] = 30
		Game.SetStageTime(timeLimit[Mode.Current])
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_scorp")	-- to be made???
		Game.SetStageMessageIndex(8)
		Game.SetMaxTraffic(2)
		Game.ActivateVehicle("scorp_v","NULL","target")
		Game.SetVehicleAIParams("scorp_v", -10, -9)
		Game.AddStageWaypoint("m4_waypoint4c")
		Game.AddStageWaypoint("m4_waypoint3c")
		Game.AddStageWaypoint("m4_waypoint2c")
		Game.AddStageWaypoint("m4_waypoint1c")
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("scorp_v")
			Game.AddCollectible("m4_beer1", "spraycan")
		Game.CloseObjective()
		StandardConditions()
		Game.SetStageTime(60)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(9)
		Game.AddObjective("goto")
			Game.SetDestination("m4_moes_fake","carsphere")
			Game.AddStageVehicle("cPolic3","m4_ambush1","NULL","Missions\\level01\\M4chase.con", "wiggum") -- OH OH THERE'S WIGGUM AGAIN... AGAIN
		Game.CloseObjective()
		StandardConditions()
		Game.SetStageTime(60)
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.SetCompletionDialog("ambush","wiggum") -- ... AGAIN
	Game.CloseStage()

	Game.AddStage() -- 	AN ABSOLUTE LIFETIME OF COMMUNITY SERVICE FOR YOU
		Game.SetHUDIcon( "w_wig" )
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(60)
		Game.ActivateVehicle("cPolic3","NULL","chase")
		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("cPolic3")
			Game.SetObjDistance(140)
		Game.CloseObjective()
		StandardConditions()
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.SetCompletionDialog("escape","wiggum")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
		Game.CloseObjective()
		StandardConditions()
		Game.SetFadeOut(1.0)
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m4_carswap")
		Game.SetSwapForcedCarLocator("level1_carstart")
		Game.SetSwapPlayerLocator("m4_conv_bart")
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageAllowMissionCancel(0)
		Game.AddObjective("timer")
			Game.AddNPC("homer","m4_homer_loc")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.NoTrafficForStage()
		Game.AddObjective("dialogue")
			Game.AddNPC("homer","m4_homer_loc")
			Game.AmbientAnimationRandomize( 1, 0 )
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.SetConversationCam( 0, "npc_far" )
			Game.SetConversationCam( 1, "npc_far" )
			--[[
			Game.AddAmbientNpcAnimation( "dialogue_shake_hand_in_air" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_yes" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_cross_arms" )
			Game.AddAmbientPcAnimation( "none" )
			]]
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_yes" )
			Game.AddAmbientPcAnimation( "dialogue_cross_arms" )
			Game.AddAmbientPcAnimation( "none" )
			Game.SetCamBestSide("m4_bestside")
			Game.SetDialogueInfo("bart","homer","enough",0)
			Game.SetDialoguePositions("m4_conv_bart","m4_homer_loc","m4_carswap")
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()