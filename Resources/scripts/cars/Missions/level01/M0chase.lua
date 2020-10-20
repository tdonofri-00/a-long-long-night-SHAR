Game.SetMass(1750.0)
Game.SetGasScale(12.0)
Game.SetSlipGasScale(15.0)
Game.SetBrakeScale(8.0)
if Mode.IsNormal then
Game.SetTopSpeedKmh(180.0)
else
Game.SetTopSpeedKmh(200.0)
end
Game.SetMaxWheelTurnAngle(35.0)
Game.SetHighSpeedSteeringDrop(0.3)
Game.SetTireGrip(30.0)
Game.SetNormalSteering(110.0)
Game.SetSlipSteering(65.0)
Game.SetEBrakeEffect(0.35)

Game.SetSlipSteeringNoEBrake(65.0)
Game.SetSlipEffectNoEBrake(0.01)

Game.SetCMOffsetX(0.0)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.5)

Game.SetSuspensionLimit(0.7)
Game.SetSpringK(0.4)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetHitPoints(50.0)
