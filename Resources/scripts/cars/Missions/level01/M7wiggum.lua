-- temporarily use stats for Sunday Drive
local tempMode = Mode.Current
if Globals.Sunday == 1 then
	Mode.Current = 1
else
	Mode.Current = Mode.Current + 1
end

--index 1 is used for the cutscene
--index 2 is what is normally for when Mode.Current = 1
--and so on 
local topSpeed = {180.0, 180.0, 230.0}
local maxWheelTurnAngle = {35.0, 50.0, 50.0}
local highSpeedSteeringDrop = {0.3, 0.5, 0.7}
local slipSteeringNoEBrake = {65.0, 45.0, 65.0}
local hitPoints = {100.0, 14.0, 14.0}

Game.SetMass(1200.0)
Game.SetGasScale(14.0)
Game.SetSlipGasScale(15.0) 
Game.SetBrakeScale(12.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current]) 
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(95.0)
Game.SetEBrakeEffect(0.3) 

Game.SetSlipSteeringNoEBrake(slipSteeringNoEBrake[Mode.Current])
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.6) 

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(5.0)

Game.SetShadowAdjustments(-0.15, -0.1, -0.15, 0.0, -0.15, 0.0, -0.15, -0.15)

Game.SetCharacterScale(0.9)

Game.SetShininess(0.2)

--change mode back
Mode.Current = tempMode