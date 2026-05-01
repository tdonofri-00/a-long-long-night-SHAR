local function DisableAllCameras()
	for i=1, 2 do
		Game.DisableTrigger("m6_camera" .. i)
	end
end

local function EnableCamera(tableIndex)
	local CamToDisable = {1,2}
	table.remove(CamToDisable, tableIndex)
	for i, cam in ipairs(CamToDisable) do
		Game.DisableTrigger("m6_camera" .. cam)
	end
end

Game.SelectMission("m6sd")

	Game.SetMissionResetPlayerOutCar("m6_bart_sd","m6_car_sd")
	Game.SetDynaLoadData("l5r1.p3d;l5z2.p3d;l5r2.p3d;")

	Game.UsePedGroup(5)

	Game.AddStage()
		DisableAllCameras()
		Game.SetHUDIcon("w_hotel")
		Game.SetStageMessageIndex(14)
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("cPolic4","m6_wiggum_sd","NULL","Missions/level01/M5wiggum.con", "wiggum")
		Game.AddObjective("goto")
			Game.SetDestination("m7_hotel","upwardglow")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.RESET_TO_HERE()
		DisableAllCameras()
		Game.SetHUDIcon("w_hotel")
		Game.SetStageMessageIndex(15)
		Game.SetMaxTraffic(5)
		Game.AddStageVehicle("cPolic4","m6_wiggum_sd","NULL","Missions/level01/M5wiggum.con", "wiggum")
		Game.AddStageVehicleCharacter( "cPolic4", "homer", "pl2" )
		Game.AddObjective("goto", "neither")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m7_hoteldoor", "triggersphere")
			Game.SetCollectibleEffect("none")
			Game.MustActionTrigger()
		Game.CloseObjective()
	Game.CloseStage()
	
	--bart looks at police tape
	Game.AddStage()
		LockPlayer(9)
		DisableAllCameras()
		Game.ResetStageHitAndRun()
		Game.AddStageVehicle("cPolic4","m6_wiggum_sd","NULL","Missions/level01/M5wiggum.con", "wiggum")
		Game.AddObjective("timer")
			Game.SetDurationTime(1.5)
		Game.CloseObjective()
	Game.CloseStage()
	
	--camera shot of homer and wiggum from the side
	Game.AddStage()
		EnableCamera(1)
		Game.NoTrafficForStage()
		Game.AddStageVehicle("cPolic4","m6_wiggum_sd","NULL","Missions/level01/M5wiggum.con", "wiggum")
		Game.AddStageCharacter("bart", "m6_player_cam1", "", "current", "m6_car_sd")
		Game.AddObjective("timer")
			Game.SetDurationTime(2.5)
		Game.CloseObjective()
		Game.SetCompletionDialog("wiggumleave")
	Game.CloseStage()
	
	--wiggum flees
	Game.AddStage()
		EnableCamera(2)
		Game.NoTrafficForStage()
		Game.ActivateVehicle("cPolic4", "NULL", "evade")
		Game.RemoveStageVehicleCharacter( "cPolic4", "homer" )
		Game.AddStageVehicleCharacter( "cPolic4", "homer", "pl2", 0 )
		Game.AddStageWaypoint("m6_waypoint1_sd")
		Game.AddStageCharacter("bart", "m6_player_cam1", "", "current", "m6_car_sd")
		Game.AddObjective("timer")
			Game.SetDurationTime(4.5)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.NoTrafficForStage()
		Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_06.p3d" )
		Game.AddStageCharacter("bart", "m6_bart_sd", "", "current", "m6_car_sd")
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()