local topSpeed = {110.0, 135.0}
local highSpeedSteeringDrop = {0.3, 0.4}
local slipSteering = {65.0, 75.0}
local hitPoints = {2.0, 2.25}

Game.SetMass(1750.0)
Game.SetGasScale(9.0)
Game.SetSlipGasScale(10.0) 
Game.SetBrakeScale(8.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current]) 
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

Game.SetShadowAdjustments(-0.1, -0.3, -0.4, 0.2, -0.4, -0.4, -0.1, 0.3 )

Game.SetShininess(0.2)
