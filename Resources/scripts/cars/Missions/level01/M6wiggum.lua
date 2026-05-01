local topSpeed = {105.0, 120.0}
local highSpeedSteeringDrop = {0.35, 0.5}
local slipSteering = {65.0, 65.0}
local hitPoints = {2.5, 3.5}

Game.SetMass(2000.0)
Game.SetGasScale(10.0)
Game.SetSlipGasScale(12.0) 
Game.SetBrakeScale(8.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(40.0)
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current]) 
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(slipSteering[Mode.Current])
Game.SetEBrakeEffect(0.3) 

Game.SetSlipSteeringNoEBrake(slipSteering[Mode.Current])
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.6) 

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(hitPoints[Mode.Current])

Game.SetShadowAdjustments(-0.15, -0.1, -0.15, 0.0, -0.15, 0.0, -0.15, -0.15)

Game.SetCharacterScale(0.9)

Game.SetShininess(0.2)
