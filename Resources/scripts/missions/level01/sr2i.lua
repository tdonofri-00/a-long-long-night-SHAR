local catchupParams = {0.7, 1.02, 1.3}
if Mode.IsHard then
	catchupParams[1] = 0.8
	catchupParams[2] = 1.15
	catchupParams[3] = 1.4
end


Game.SelectMission("sr2")
	
	Game.SetAnimatedCameraName( "race2camShape" )
	Game.SetAnimCamMulticontName( "race2cam" )

	Game.SetMissionResetPlayerInCar("sr2_carstart")
	Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")

	Game.UsePedGroup(0)

	Game.SetNumValidFailureHints( Mode.FailHintCount )

	Game.StreetRacePropsLoad("l1_sr2p.p3d;l1m1_baracade.p3d:")
	Game.StreetRacePropsUnload("l1_sr2p.p3d:")
	
	Game.AddStage("final")
		Game.DisableHitAndRun()
		Game.SetStagePayout(100)
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3", 1000)
			Game.AddToCountdownSequence("2", 1000)
			Game.AddToCountdownSequence("1", 1000)
			Game.AddToCountdownSequence("DRIVE", 400)
		Game.PlacePlayerCar("current", "sr2_carstart")
		Game.PutMFPlayerInCar( )
		Game.NoTrafficForStage()
		Game.AddStageVehicle("snake_v", "sr2_AIcarstart_1", "race", "Missions\\level01\\R2snake.con", "snake")
		Game.AddStageVehicle("f40sr2", "sr2_AIcarstart_2", "race", "Missions\\level01\\R2enzo.con", "male1")
		Game.AddStageVehicle("spyder", "sr2_AIcarstart_3" ,"race", "Missions\\level01\\R2spyder.con", "male4")
		Game.SetVehicleAIParams("snake_v", 50, 51)
		Game.SetVehicleAIParams("f40sr2", 50, 51)
		Game.SetVehicleAIParams("spyder", 50, 51)
		Game.SetStageAIRaceCatchupParams("snake_v", 80, catchupParams[1], catchupParams[2] + 0.03, catchupParams[3])
		Game.SetStageAIRaceCatchupParams("f40sr2", 80, catchupParams[1] - 0.1, catchupParams[2], catchupParams[3])
		Game.SetStageAIRaceCatchupParams("spyder", 80, catchupParams[1], catchupParams[2] - 0.03, catchupParams[3])		
		Game.AddStageWaypoint("sr2_navpoint5")
		Game.AddStageWaypoint("sr2_waypoint1")
		Game.AddStageWaypoint("sr2_waypoint2")
		Game.AddStageWaypoint("sr2_navpoint1")
		Game.AddStageWaypoint("sr2_waypoint4")
		Game.AddStageWaypoint("sr2_navpoint2")
		Game.AddStageWaypoint("sr2_navpoint2a")
		Game.AddStageWaypoint("sr2_navpoint2b")
		Game.AddStageWaypoint("sr2_navpoint3")
		Game.AddStageWaypoint("sr2_waypoint7")
		Game.AddStageWaypoint("sr2_waypoint8")
		Game.AddStageWaypoint("sr2_navpoint3a")
		Game.AddStageWaypoint("sr2_navpoint4")
		Game.AddStageWaypoint("sr2_waypoint9")
		Game.AddStageWaypoint("sr2_waypoint10")
		Game.AddStageWaypoint("sr2_waypoint11")
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("w_flag")
		Game.AddObjective("race")
			for i= 1, 12 do
				Game.AddCollectible("sr2_waypoint"..i,"upwardglow_b")
			end
			Game.SetRaceLaps(2)
		Game.CloseObjective()
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		SurviveConditions()
		if GetSetting("SRDisplayTime") then
			Game.SetStageTime(0)
			Game.UseElapsedTime()
		end
		Game.GoToPsScreenWhenDone()
	Game.CloseStage()

Game.CloseMission()