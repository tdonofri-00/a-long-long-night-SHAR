local gasScale = {12.0, 20.0}
local topSpeed = {220.0, 220.0}
local highSpeedSteeringDrop = {0.4, 0.6}
local slipSteering = {65.0, 75.0}

Game.SetMass(2000.0)	--unrealistic mass, but required for challenge's sake
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 1.0)
Game.SetBrakeScale(10.0)
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

Game.SetSuspensionYOffset(-0.08)

Game.SetHitPoints(100.0)

Game.SetShadowAdjustments(-0.3, -0.6, -0.3, 0.0, -0.3, 0.0, -0.3, 0.7 )

Game.SetShininess(0.2)