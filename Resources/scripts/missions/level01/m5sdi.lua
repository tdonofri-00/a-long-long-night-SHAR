Game.SelectMission("m5sd")

	Game.SetMissionResetPlayerOutCar("m5_bart_sd","m5_carstart")
	Game.SetDynaLoadData("l5z1.p3d;l5r1.p3d;l5r4.p3d;")

	Game.UsePedGroup(5)

	Game.AddStage()
		Game.SetStageMessageIndex(01)
		Game.AddObjective("goto")
			Game.SetDestination("m5_hospital","carsphere")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("w_fone")
		Game.SetStageMessageIndex(02)
		Game.AddObjective("goto")
			Game.AddNPC("npd","m0_npd_sd")
			Game.SetDestination("m0_phone_loc_sd","triggersphere")
			Game.MustActionTrigger()
			Game.SetCollectibleEffect("none")
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()