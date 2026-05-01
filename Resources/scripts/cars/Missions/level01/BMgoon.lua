local gasScale = {8.0, 11.0}
local topSpeed = {160.0, 190.0}
local maxWheelTurnAngle = {30.0, 30.0}
local hitPoints = {3.5, 5.0}

Game.SetMass(1500.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 1.0)
Game.SetBrakeScale(10.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(0.5)
Game.SetTireGrip(60.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(75.0)
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(65.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.2)

Game.SetSuspensionLimit(0.6)
Game.SetSpringK(0.45)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(hitPoints[Mode.Current])

Game.SetWheelieRange(0.15)
Game.SetWheelieOffsetY(0.0)
Game.SetWheelieOffsetZ(-0.5)

Game.SetCharacterScale(0.75)

Game.SetShadowAdjustments(-0.3, 0.0, -0.3, 0.0, -0.3, 0.0, -0.3, 0.0 )

Game.SetShininess(0.21)