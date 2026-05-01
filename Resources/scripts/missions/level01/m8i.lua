Game.SelectMission("m8")

	Game.AddStage(0)
		Game.AddObjective("timer")
			Game.SetDurationTime(2)
		Game.CloseObjective()
	Game.CloseStage()
 
Game.CloseMission()