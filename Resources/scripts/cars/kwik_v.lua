local driver = "none"
if GetFileName(GetPath()) == "kwik_v.con" then
	driver = "apu"
end

Game.SetMass(4000.0)

Game.SetGasScale(8.5)
Game.SetSlipGasScale(9.5)

Game.SetBrakeScale(7.0)

Game.SetTopSpeedKmh(110.0)

Game.SetMaxWheelTurnAngle(32.0)
Game.SetHighSpeedSteeringDrop(0.3)

Game.SetTireGrip(2.6) 

Game.SetNormalSteering(60.0)

Game.SetSlipSteering(40.0)
Game.SetEBrakeEffect(0.25)

Game.SetSlipSteeringNoEBrake(35.0)
Game.SetSlipEffectNoEBrake(0.2)

Game.SetCMOffsetX(0.0)
--Game.SetCMOffsetY(0.15)
Game.SetCMOffsetY(-0.1)
Game.SetCMOffsetZ(0.75)

Game.SetSuspensionLimit(0.6)

Game.SetSpringK(0.5)
Game.SetDamperC(0.3)

Game.SetSuspensionYOffset(0.0)

Game.SetBurnoutRange(0.06)
Game.SetMaxSpeedBurstTime(0.5)
 
Game.SetDonutTorque(0.0)

Game.SetWeebleOffset(-0.55)

Game.SetHitPoints(999999.0)

Game.SetWheelieRange(0.15)
Game.SetWheelieOffsetY(0.0)
Game.SetWheelieOffsetZ(-0.4)

Game.SetShadowAdjustments(0.0, 0.3, 0.0, 0.4, 0.1, 0.6, 0.1, -1.2)

Game.SetDriver(driver)
Game.SetCharactersVisible(1)
Game.SetHasDoors(1)
Game.SetCharacterScale(0.9)

Game.SetGamblingOdds(3.0)