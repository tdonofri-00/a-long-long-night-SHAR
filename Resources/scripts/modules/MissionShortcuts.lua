--shortcut commands that are shared by other missions

function SurviveConditions()
	Game.AddCondition("outofvehicle")
		Game.SetCondTime( 10000 )
		Game.SetCondTargetVehicle("current")
	Game.CloseCondition()
	Game.AddCondition( "damage" )
		Game.SetCondMinHealth( 0.0 )
		Game.SetCondTargetVehicle( "current" )
	Game.CloseCondition()
end

function LockPlayer (s)
	Game.StartCountdown("") 
		Game.AddToCountdownSequence( "", s*1000 )
end

function Timeout (s,NotConditionOnly)
	if NotConditionOnly == nil then NotConditionOnly = true end
	if NotConditionOnly then
		Game.SetStageTime(s)
	end
	Game.AddCondition("timeout") Game.CloseCondition()
end

function ConstantHitAndRun (fill)
	Game.SetStageHitAndRun(fill)
	Game.SetStageHitAndRunDecay(-1)
	Game.SetStageHitAndRunDecayHitAndRun(-1)
	Game.SetStageHitAndRunDecayInterior(-1)
	Game.SetStageHitAndRunFine(0)
	Game.SetStageCarChangeHitAndRunChange(0)
	Game.AddCondition("hitandruncaught")
	Game.CloseCondition()
end

--SetTrafficByDifficulty(3, 5)	--normal = 3, hard = 5
function SetTrafficByDifficulty(...)
	local trafficNum = {...}
	Game.SetMaxTraffic(trafficNum[Mode.Current])
end

function SetTimeByDifficulty(...)
	local timeLimit = {...}
	Game.SetStageTime(timeLimit[Mode.Current])
end

function AddTimeByDifficulty(...)
	local timeLimit = {...}
	Game.AddStageTime(timeLimit[Mode.Current])
end