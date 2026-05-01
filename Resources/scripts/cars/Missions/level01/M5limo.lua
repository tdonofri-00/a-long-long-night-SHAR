local gasScale = {8.0, 13.0}
local topSpeed = {220.0, 230.0}
local maxWheelTurnAngle = {45.0, 45.0}
local highSpeedSteeringDrop = {0.5, 0.6}

Game.SetMass(2500.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 1.0)
Game.SetBrakeScale(gasScale[Mode.Current])
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
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

Game.SetShadowAdjustments(-0.1, 1.0, -0.1, 0.0, -0.1, 0.0, -0.1, -1.2)

Game.SetCharacterScale(0.9)