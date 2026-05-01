local gasScale = {6.0, 8.0}
local topSpeed = {75.0, 85.0}
local maxWheelTurnAngle = {35.0, 40.0}
local highSpeedSteeringDrop = {0.4, 0.5}
--local hitPoints = {3.0, 5.0}

Game.SetMass(4000.0)
Game.SetGasScale(gasScale[Mode.Current]) 
Game.SetSlipGasScale(gasScale[Mode.Current] + 2)
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current])
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(85.0)
Game.SetEBrakeEffect(0.35) -- ,3?

Game.SetSlipSteeringNoEBrake(85.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.15)
Game.SetCMOffsetZ(0.75) -- .1 or .2

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(20.0)

Game.SetShadowAdjustments(0.0, 0.5, 0.0, 0.4, 0.2, 0.6, 0.2, -1.6)