local gasScale = {11.0, 12.0}

Game.SetMass(1500.0)
Game.SetGasScale(gasScale[Mode.Current])
Game.SetSlipGasScale(gasScale[Mode.Current] + 1.0)
Game.SetBrakeScale(gasScale[Mode.Current])
Game.SetTopSpeedKmh(160.0)
Game.SetMaxWheelTurnAngle(30.0)
Game.SetHighSpeedSteeringDrop(0.6) -- was 1.0
Game.SetTireGrip(70.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(80.0)
Game.SetEBrakeEffect(0.4) -- ,3?

Game.SetSlipSteeringNoEBrake(80.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.2)
Game.SetCMOffsetZ(0.4) -- .1 or .2

Game.SetSuspensionLimit(0.6)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(15.0)

Game.SetShadowAdjustments(-0.3, -0.6, -0.3, 0.0, -0.3, 0.0, -0.3, 0.7 )
