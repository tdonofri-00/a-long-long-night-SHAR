local topSpeed = {135.0, 150.0}
local highSpeedSteeringDrop = {0.3, 0.4}
local slipSteering = {65.0, 75.0}

Game.SetMass(1750.0)
Game.SetGasScale(14.0)
Game.SetSlipGasScale(15.0) 
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

Game.SetHitPoints(5.0)

Game.SetShadowAdjustments(-0.15, -0.1, -0.15, 0.0, -0.15, 0.0, -0.15, -0.15)

Game.SetCharacterScale(0.9)

Game.SetShininess(0.2)
