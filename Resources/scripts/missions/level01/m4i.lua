Game.SelectMission("m4")

	Game.SetMissionResetPlayerInCar("m4_bart_carstart")
	Game.SetDynaLoadData("l5z2.p3d;l5r1.p3d;l5r2.p3d;")
	Game.InitLevelPlayerVehicle("homer_v","m4_bart_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage()
		Game.SetHUDIcon("w_save")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(4)
		Game.AddStageVehicle("cDuff","m4_duffsmall_loc","NULL","Missions\\level01\\M4dump.con", "jasper")
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "3", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "2", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "1", 600 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "GO", 400 ) -- duration time in milliseconds
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
		if Mode.IsNormal then
		Game.SetStageTime(40)
		else
		Game.SetStageTime(30)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_duff")
		Game.SetStageMessageIndex(5)
		Game.ActivateVehicle("cDuff","NULL","evade")
		if Mode.IsNormal then
		Game.SetMaxTraffic(2)
		else
		Game.SetMaxTraffic(3)
		end
		Game.AddStageVehicle("cPolic3","m4_ambush2","NULL","Missions\\level01\\M4dump.con", "wiggum")
		for k, v in pairs({1,3,4,6,7})do
		Game.AddStageWaypoint("m4_waypoint"..v.."")
		end
		Game.AddStageWaypoint("m4_duffrealpoint") 
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("cDuff")
			for k, v in pairs({1,3,4,5})do
			Game.AddCollectible("m4_beer"..v.."","coolr")
			end
			Game.BindCollectibleTo(0, 0)
			Game.BindCollectibleTo(1, 1)
			Game.BindCollectibleTo(2, 2)
			Game.BindCollectibleTo(3, 3)
			Game.SetCollectibleSoundEffect("level_2_pickup_sfx")
		Game.CloseObjective()
		Game.AddCondition("followdistance")
			if Mode.IsNormal then
			Game.SetFollowDistances( 0 , 150)
			else
			Game.SetFollowDistances( 0 , 135)
			end
			Game.SetCondTargetVehicle("cDuff")
		Game.CloseCondition()
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.DisableHitAndRun()
		Game.ActivateVehicle("cDuff","","race")
		Game.ActivateVehicle("cPolic3","NULL","race") -- Police chasing Duff Truck
		Game.AddStageVehicle("cDuff2","m4_duffbig_loc","NULL","Missions\\level01\\M4dump.con", "jimbo")
		Game.AddStageWaypoint("m4_duffrealpoint")
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetStageTime(45)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_duff2")
		Game.SetStageMessageIndex(7)
		Game.ActivateVehicle("cDuff2","NULL","evade")
		if Mode.IsNormal then
		Game.SetMaxTraffic(3)
		else
		Game.SetMaxTraffic(4)
		end
		Game.AddStageWaypoint("m4_waypoint1b")
		Game.AddStageWaypoint("m4_waypoint2b")
		Game.AddStageWaypoint("m4_waypoint3b")
		Game.AddStageWaypoint("m4_waypoint4b")
		for k, v in pairs({1,3,4,6,7})do
		Game.AddStageWaypoint("m4_waypoint"..v.."")
		end
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("cDuff2")
			for k, v in pairs({1,3,4})do
			Game.AddCollectible("m4_moarbeer"..v.."", "coolr")
			end
			for i= 1,5 do
			Game.AddCollectible("m4_beer"..i ,"coolr")
			end
			Game.SetCollectibleSoundEffect("level_5_pickup_sfx")
		Game.CloseObjective()
		if Mode.IsNormal then
		Game.AddCondition("followdistance")
			Game.SetFollowDistances( 0 , 150)
			Game.SetCondTargetVehicle("cDuff2")
		Game.CloseCondition()
		Game.AddCondition("timeout")
			Game.SetStageTime(90)
		Game.CloseCondition()
		else
		Game.AddCondition("followdistance")
			Game.SetFollowDistances( 0 , 135)
			Game.SetCondTargetVehicle("cDuff2")
		Game.CloseCondition()
		Game.AddCondition("timeout")
			Game.SetStageTime(75)
		Game.CloseCondition()
		end
		Game.ShowStageComplete()
	Game.CloseStage()

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

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.DisableHitAndRun()
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
			Game.AddStageVehicle("cPolic2","m4_ambush1","NULL","Missions\\level01\\M0chase.con", "wiggum") -- OH OH THERE'S WIGGUM AGAIN... AGAIN
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		if Mode.IsHard  then
		Game.AddStageTime(45)
		else
		Game.AddStageTime(60)
		end
		Game.AddCondition("timeout")
		Game.CloseCondition()
		Game.SetCompletionDialog("ambush","wiggum") -- ... AGAIN
	Game.CloseStage()

	Game.AddStage() -- 	AN ABSOLUTE LIFETIME OF COMMUNITY SERVICE FOR YOU
		Game.SetHUDIcon( "w_wig" )
		Game.SetStageMessageIndex(10)
		Game.DisableHitAndRun()
		Game.AddStageTime(20)
		Game.ActivateVehicle("cPolic2","NULL","chase")
		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("cPolic2")
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
		Game.SetCompletionDialog("escape","wiggum")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_moes")
		Game.SetStageMessageIndex(1)
		Game.AddObjective("goto")
			Game.SetDestination("m4_moestavern","carsphere")
		Game.CloseObjective()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition( "damage" )
			Game.SetCondMinHealth( 0.0 )
			Game.SetCondTargetVehicle( "current" )
		Game.CloseCondition()
		Game.SetFadeOut(1.0)
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m4_carswap")
		Game.SetSwapForcedCarLocator("level1_carstart")
		Game.SetSwapPlayerLocator("m4_bart_loc")
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("timer")
			Game.AddNPC("homer","m4_homer_loc")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("homer","m4_homer_loc")
			Game.AmbientAnimationRandomize( 1, 0 )
			Game.AmbientAnimationRandomize( 0, 0 )
			Game.SetConversationCam( 0, "npc_far" )
			Game.SetConversationCam( 1, "npc_far" )
			Game.SetConversationCam( 2, "npc_far" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture" )
			Game.AddAmbientNpcAnimation( "none" )
			Game.AddAmbientNpcAnimation( "dialogue_scratch_head" )
			Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
			Game.AddAmbientPcAnimation( "none" )
			Game.AddAmbientPcAnimation( "dialogue_open_arm_hand_gesture" )
			Game.AddAmbientPcAnimation( "none" )
			Game.SetDialogueInfo("bart","homer","duff2",0)
			Game.SetDialoguePositions("m4_bart_loc","m4_homer_loc","m4_carswap")
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()