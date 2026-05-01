local timeLimit = {120, 120}
local fee = {50, 75}	--gives players a reason not to switch off to Normal when struggling on Hard.

Game.SelectMission("gr1")

	Game.SetMissionResetPlayerInCar("gr1_carstart")
	Game.SetDynaLoadData("l5r2.p3d;l5z2.p3d;l5z3.p3d;")
	
	Game.InitLevelPlayerVehicle("enzogri","gr1_carstart","OTHER")
	Game.SetForcedCar()
	
	Game.StreetRacePropsLoad("l1_gr1p.p3d;l1m1_baracade.p3d:")
	Game.StreetRacePropsUnload("l1_gr1p.p3d:")
	Game.SetPedsEnabled(1)
	
	Game.UsePedGroup(0)
	
	Game.SetNumValidFailureHints( Mode.FailHintCount )
	
	--test failed
	--Game.SetAnimatedCameraName( "race1camShape" )
	--Game.SetAnimCamMulticontName( "race1cam" )

	Game.AddStage(0)
--		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		Game.AddObjective("coins")
			Game.SetCoinFee(fee[Mode.Current])
		Game.CloseObjective()
		Game.SetMusicState("BonusMission", "Wager")
		Game.SetCompletionDialog("ty2count")
	Game.CloseStage()

	Game.AddStage("final")
--		Game.DisableHitAndRun()
-- Maybe having hit & run be possible would make sense? I mean does the mob do anything legal? lol
		SetTrafficByDifficulty(2,3)
		Game.SetHUDIcon("w_flag")
		Game.SetStageMessageIndex(1)
		Game.StartCountdown("count")
			Game.AddToCountdownSequence( "3", 1000 )
			Game.AddToCountdownSequence( "2", 1000 )
			Game.AddToCountdownSequence( "1", 1000 )
			Game.AddToCountdownSequence( "DRIVE", 400 )
		Game.SetStageTime(1)
		Game.UseElapsedTime()
		Game.SetRaceEnteryFee(fee[Mode.Current])
		Game.AddObjective("race","gamble")
			timeLimit[Mode.NormalMode] = 135
			timeLimit[Mode.HardMode] = 125
			Game.SetParTime(timeLimit[Mode.Current])
			--Game.SetParTime(600)
			for i= 1,23 do
			Game.AddCollectible("gr1_waypoint".. i,"upwardglow_b")
			end
		Game.CloseObjective()
		SurviveConditions()
	Game.CloseStage()

Game.CloseMission()