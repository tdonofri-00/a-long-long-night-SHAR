local gasScale = {5.0, 5.0}
local maxWheelTurnAngle = {45.0, 45.0}
local highSpeedSteeringDrop = {0.4, 0.4}
local slipSteeringNoEBrake = {45.0, 45.0}
local hitPoints = {6.5, 8.0}

Game.SetMass(4000.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 2)
Game.SetBrakeScale(6.0)
Game.SetTopSpeedKmh(80.0)
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current])
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(65.0)
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(slipSteeringNoEBrake[Mode.Current])
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.2)
Game.SetCMOffsetZ(0.4)

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(hitPoints[Mode.Current])

Game.SetWeebleOffset(-0.75)

Game.SetWheelieRange(0.15)
Game.SetWheelieOffsetY(0.0)
Game.SetWheelieOffsetZ(-0.5)

Game.SetShadowAdjustments(0.05, 0.2, 0.05, 0.0, 0.05, 0.0, 0.05, -0.2 )
