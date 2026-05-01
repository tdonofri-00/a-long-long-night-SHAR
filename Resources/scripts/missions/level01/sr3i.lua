local catchupParams = {0.55, 0.97, 1.4}
if Mode.IsHard then
	catchupParams[1] = 0.65
	catchupParams[2] = 1.0
	catchupParams[3] = 1.4
end

Game.SelectMission("sr3")

	Game.SetAnimatedCameraName( "race3camShape" )
	Game.SetAnimCamMulticontName( "race3cam" )

	Game.SetMissionResetPlayerInCar("sr3_carstart")
	Game.SetDynaLoadData("l5z4.p3d;l5r3.p3d;l5r4.p3d;")

	Game.UsePedGroup(0)
	Game.SetNumValidFailureHints( Mode.FailHintCount )
	
	Game.StreetRacePropsLoad("l1_sr3p.p3d;l1m1_baracade.p3d:")
	Game.StreetRacePropsUnload("l1_sr3p.p3d:")

	Game.AddStage("final")
		Game.DisableHitAndRun()
		Game.SetStagePayout(100)
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3", 1000)
			Game.AddToCountdownSequence("2", 1000)
			Game.AddToCountdownSequence("1", 1000)
			Game.AddToCountdownSequence("DRIVE", 400)
		Game.PlacePlayerCar("current", "sr3_carstart")
		Game.PutMFPlayerInCar( )
		Game.NoTrafficForStage()
		Game.AddStageVehicle("homer_v", "sr3_AIcarstart_1", "race", "Missions\\level01\\R3homer.con", "homer")
		Game.AddStageVehicle("enzo","sr3_AIcarstart_2","race","Missions\\level01\\R3enzo.con","male1")
		Game.AddStageVehicle("spyder","sr3_AIcarstart_3","race","Missions\\level01\\R3spyder.con","male4")
		Game.SetStageAIRaceCatchupParams("homer_v", 100, catchupParams[1], catchupParams[2] + 0.02, catchupParams[3])
		Game.SetStageAIRaceCatchupParams("enzo", 100, catchupParams[1] - 0.1, catchupParams[2], catchupParams[3])
		Game.SetStageAIRaceCatchupParams("spyder", 100, catchupParams[1], catchupParams[2] - 0.05, catchupParams[3])
		Game.SetVehicleAIParams("homer_v", 50, 51)
		Game.SetVehicleAIParams("enzo", 50, 51)
		Game.SetVehicleAIParams("spyder", 50, 51)		
		for i= 1,11 do
			Game.AddStageWaypoint("sr3_navpoint"..i)
		end
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("w_flag")
		Game.AddObjective("race")
			for i= 1,13 do
				Game.AddCollectible("sr3_waypoint"..i,"upwardglow_b")
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