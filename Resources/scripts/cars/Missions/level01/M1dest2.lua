--[[
	local tables for different stats to make difficulty configurations easier. something done in SLEM and SHAR Tweaked.
	first element = Normal, second element = Hard
	
	if you were to add an Easy mode, you could add the values at the start of the tables.
	for a Very Hard mode, you would add the values at the end of the table.
	just make sure that Mode.Current is NEVER below 1.
]]
local gasScale = {6.5, 7.5}
local topSpeed = {110.0, 110.0}
local maxWheelTurnAngle = {35.0, 45.0}
local highSpeedSteeringDrop = {0.3, 0.5}
local slipSteering = {65.0, 75.0}
local hitPoints = {2.2, 3.2}


Game.SetMass(1500.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 0.5)	-- if Normal, 6.5. if Hard, 7.5
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(0.3)
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(slipSteering[Mode.Current])
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(slipSteering[Mode.Current])
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.2)

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)
Game.SetHitPoints(hitPoints[Mode.Current])

Game.SetShadowAdjustments(0.05, 0.2, 0.05, 0.0, 0.05, 0.0, 0.05, -0.2 )

Game.SetShininess(0.2)
