local topSpeed = {150.0, 180.0}

Game.SetMass(1750.0)
Game.SetGasScale(7.0)
Game.SetSlipGasScale(8.0)
Game.SetBrakeScale(9.0)
Game.SetTopSpeedKmh(topSpeed[Mode.Current])
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(0.5)
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(75.0)
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(75.0)
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