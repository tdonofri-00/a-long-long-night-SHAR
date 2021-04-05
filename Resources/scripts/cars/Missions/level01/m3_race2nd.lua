if Mode.IsNormal then
Game.SetMass(1500.0)

Game.SetGasScale(9.5)
Game.SetSlipGasScale(10.5)

Game.SetBrakeScale(10.0)

Game.SetTopSpeedKmh(149.0)

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

Game.SetShadowAdjustments(-0.3, 0.0, -0.3, 0.0, -0.3, 0.0, -0.3, 0.0 )
else
Game.SetMass(1500.0)

Game.SetGasScale(9.8)
Game.SetSlipGasScale(10.9)

Game.SetBrakeScale(10.0)

Game.SetTopSpeedKmh(155.0)

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

Game.SetShadowAdjustments(-0.3, 0.0, -0.3, 0.0, -0.3, 0.0, -0.3, 0.0 )
end