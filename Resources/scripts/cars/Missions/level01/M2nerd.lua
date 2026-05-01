local gasScale = {7.0, 9.0}
local maxWheelTurnAngle = {35.0, 45.0}
local highSpeedSteeringDrop = {0.4, 0.5}

Game.SetMass(1500.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 1.0)
Game.SetBrakeScale(gasScale[Mode.Current])
Game.SetTopSpeedKmh(240.0)
Game.SetMaxWheelTurnAngle(maxWheelTurnAngle[Mode.Current])
Game.SetHighSpeedSteeringDrop(highSpeedSteeringDrop[Mode.Current])
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(75.0)
Game.SetEBrakeEffect(0.3)

Game.SetSlipSteeringNoEBrake(75.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.2)

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(15.0)

Game.SetShadowAdjustments(-0.2, -0.1, -0.2, 0.0, -0.2, 0.0, -0.2, 0.2)