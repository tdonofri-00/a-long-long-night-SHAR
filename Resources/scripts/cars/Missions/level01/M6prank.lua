local gasScale = {6.0, 7.0}
local topSpeed = {100.0, 100.0}

Game.SetMass(4000.0)
Game.SetGasScale(gasScale[Mode.Current]) 
Game.SetSlipGasScale(gasScale[Mode.Current] + 2) 
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(0.45)
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(75.0)
Game.SetEBrakeEffect(0.35) -- ,3?

Game.SetSlipSteeringNoEBrake(75.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.15)
Game.SetCMOffsetZ(0.7) -- .1 or .2

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(50.0)

Game.SetShadowAdjustments(0.0, 0.3, 0.0, 0.4, 0.1, 0.6, 0.1, -1.2)