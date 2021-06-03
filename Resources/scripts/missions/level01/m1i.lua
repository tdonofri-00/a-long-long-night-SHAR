local function L1M1EnableHints()
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

Game.SelectMission("m1")

	Game.SetMissionResetPlayerInCar("m1_car_loc")
	Game.SetDynaLoadData("l5z4.p3d;l5r3.p3d;l5r4.p3d;")
	Game.StreetRacePropsLoad("l1m1_baracade.p3d;") -- Barracade
	Game.StreetRacePropsUnload("l1m1_baracade.p3d:") -- Barracade
	Game.SetPedsEnabled(1)

	Game.UsePedGroup(5)
	L1M1EnableHints()

	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.StartCountdown("count")
		Game.AddToCountdownSequence( "3", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "2", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "1", 800 ) -- duration time in milliseconds
		Game.AddToCountdownSequence( "GO", 400 ) -- duration time in milliseconds
		Game.SetStageMessageIndex(4)
		if Mode.IsNormal then
		Game.SetMaxTraffic(2)
		else
		Game.SetMaxTraffic(3)
		end
		Game.SetHUDIcon( "w_snakec" )
		Game.PlacePlayerCar("current", "m1_car_loc")
		Game.PutMFPlayerInCar( )
		Game.AddStageVehicle("snake_v","m1_snk_car","target","Missions\\level01\\M1dest.con", "snake")
		--[[
		if Mode.IsNormal then
		Game.SetVehicleAIParams( "snake_v", -10, -9 )
		end
		]]
		Game.SetVehicleAIParams( "snake_v", -10, -9 )
		Game.AddStageWaypoint( "m1_waypointS_1" )
		Game.AddStageWaypoint( "m1_waypointS_2" )
		Game.AddStageWaypoint( "m1_waypointS_3" )
		Game.AddStageWaypoint( "m1_dmv_fail" )
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("snake_v")
			Game.AddCollectible("m1_stuff","firewrks")
			Game.AddNPC("snake","m0_npd_sd") -- Hide NPC
		Game.CloseObjective()
		Game.AddCondition("race")
			Game.SetCondTargetVehicle("snake_v")
		Game.CloseCondition()
		StandardConditions()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("w_lexicon")
		Game.SetStageMessageIndex(05)
		Game.AddObjective("goto")
			Game.SetDestination("m1_accomplice1_goto","carsphere")
			Game.AddStageVehicle("yellow","m1_accomplice1","NULL","Missions\\level01\\M1dest2.con", "male1")
		Game.CloseObjective()
		StandardConditions()
		Game.ShowStageComplete() -- Checkpoint Notification
	Game.CloseStage()

	Game.AddStage()
		Game.CHECKPOINT_HERE()
		Game.SetCheckpointDynaLoadData("l5r1.p3d;l5z2.p3d;l5r2.p3d;")
		Game.SetCheckpointResetPlayerInCar("m1_checkpoint1" )
		Game.SetStageMessageIndex(6)
		Game.SetHUDIcon("w_yellow")
		Game.ActivateVehicle("yellow","NULL","target")
		for i=1, 7 do
			Game.AddStageWaypoint("m1_waypoint1-" .. i)
		end
		
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("yellow")
			Game.AddCollectible("m1_stuff2","lasergun")
		Game.CloseObjective()
		StandardConditions()
		Game.SetStageTime(90)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("w_kburg")
		Game.SetStageMessageIndex(7)
		Game.AddObjective("goto")
			Game.SetDestination("m1_accomplice2_goto","carsphere")
			Game.AddStageVehicle("black","m1_accomplice2","NULL","Missions\\level01\\M1dest3.con", "joger2")
		Game.CloseObjective()
		StandardConditions()
		Game.ShowStageComplete() -- Checkpoint Notification
	Game.CloseStage()

	Game.AddStage("final")
		Game.CHECKPOINT_HERE()
		Game.SetCheckpointDynaLoadData("l5z1.p3d;l5r1.p3d;l5z2.p3d;")
		Game.SetCheckpointResetPlayerInCar("m1_checkpoint2" )
		Game.SetStageMessageIndex(6)
		Game.SetHUDIcon("w_black")
		Game.ActivateVehicle("black","NULL","target")
		-- holy shit look at all those waypoints. does this stage really need that many?
		-- Basic route
		Game.AddStageWaypoint("m1_wp_0")
		Game.AddStageWaypoint("m1_wp_1b")
		Game.AddStageWaypoint("m1_wp_2b")
		Game.AddStageWaypoint("m1_wp_3b")
		Game.AddStageWaypoint("m1_wp_4")
		-- Route 2
		Game.AddStageWaypoint("m1_wp_4b")
		Game.AddStageWaypoint("m1_wp_5")
		Game.AddStageWaypoint("m1_wp_6")
		Game.AddStageWaypoint("m1_wp_7")
		Game.AddStageWaypoint("m1_wp_8")
		-- Route 3 (Advanced)
		Game.AddStageWaypoint("m1_wp_1c")
		Game.AddStageWaypoint("m1_wp_2b")
		Game.AddStageWaypoint("m1_wp_3b")
		Game.AddStageWaypoint("m1_wp_9")
		Game.AddStageWaypoint("m1_wp_10")
		Game.AddStageWaypoint("m1_wp_11")
		Game.AddStageWaypoint("m1_wp_2b")
		Game.AddStageWaypoint("m1_wp_3b")
		Game.AddStageWaypoint("m1_wp_4b")
		Game.AddStageWaypoint("m1_wp_5")
		Game.AddStageWaypoint("m1_wp_6")
		Game.AddStageWaypoint("m1_wp_7")
		Game.AddStageWaypoint("m1_wp_8")
		-- Basic route reprise
		Game.AddStageWaypoint("m1_wp_1c")
		Game.AddStageWaypoint("m1_wp_2b")
		Game.AddStageWaypoint("m1_wp_3b")
		Game.AddStageWaypoint("m1_wp_4")
		-- End of waypoints
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("black")
			Game.AddCollectible("m1_stuff2","blankbox")
		Game.CloseObjective()
		StandardConditions()
		Game.SetStageTime(90)
		Game.AddCondition("timeout")
		Game.CloseCondition()
	Game.CloseStage()

Game.CloseMission()