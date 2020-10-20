-- MFK Functions
-- Functions for Lua Scripts that handle MFK files.

local characterLimits = {	-- Lower case to not conflict with the check in HandleMFKFunction.
	--[[
		DO NOT TWEAK ANY OF THESE UNTIL WE KNOW FOR SURE ANY OF THEM ARE HIGHER THAN SET HERE.
	]]
	["LoadP3DFile"] = {59},
	["SetMissionResetPlayerInCar"] = {18},
	["SetMissionResetPlayerOutCar"] = {18,18},
	["AddNPC"] = {[2] = 18},
	["AddObjectiveNPCWaypoint"] = {[2] = 19},
	["SetDestination"] = {30},
	["AddStageCharacter"] = {[2] = 13,[5] = 18},
	["SetDialoguePositions"] = {19,19,[5] = 22},
	["AddStageVehicle"] = {[2] = 23},
	["AddStageWaypoint"] = {22},
	["AddCollectible"] = {17},
	["PlacerPlayerCar"] = {[2] = 13},
	["LoadDisposableCar"] = {21},
	["AddFlyingActorByLocator"] = {[3] = 12},
	["AddSpawnPointByLocatorScript"] = {14,[4] = 14},
	["InitLevelPlayerVehicle"] = {[2] = 18},
	["AddPurchaseCarReward"] = {11,[4] = 11},
	["AddPurchaseCarNPCWaypoint"] = {[2] = 13},
	["AddSafeZone"] = {13},
	["SetSwapPlayerLocator"] = {19},
	["SetSwapDefaultCarLocator"] = {15},
	["SetSwapForcedCarLocator"] = {17},
	["AddCollectibleStateProp"] = {[2] = 11},
	["SetPresentationBitmap"] = {41},
	["SetCamBestSide"] = {20},
	["AddNPCCharacterBonusMission"] = {[3] = 15},
	["SetBonusMissionDialoguePos"] = {[2] = 14,[3] = 17,[4] = 15},
	["AddAmbientCharacter"] = {[2] = 16},
	["AddBonusMissionNPCWaypoint"] = {[2] = 18},
	["AddAmbientNPCWaypoint"] = {[2] = 19},
	["SetInitialWalk"] = {19},
	["AddStageVehicle"] = {[4] = 29},
	["InitLevelPlayerVehicle"] = {[4] = 19},
	["CreateChaseManager"] = {[2] = 17},
	["SetDynaLoadData"] = {49},
	["BindReward"] = {[2] = 22},
}

function HandleMFKFunction(minArgs,maxArgs,functionName,...)
	local args = {...}
	if #args >= 1 and type(args[1]) == "table" then
		args = args[1]
	end	
	
	if #args < minArgs or #args > maxArgs then
		error("Invalid parameters for "..functionName..".\n\n"..functionName.." only supports a minimum of "..tostring(minArgs).." args and a maximum of "..tostring(maxArgs).." args.\n\nYou attempted to use "..#args.." args.",3)
	end

	-- local CharacterLimits = characterLimits[functionName]
	
	local Args = ""
	local first = true
	for k,v in pairs(args) do
		--[[
		if CharacterLimits ~= nil then
			local CharacterLimit = CharacterLimits[k]
			if CharacterLimit ~= nil then
				Characters = string.len(v)
				if Characters > CharacterLimit then
					error("Character Limit exceeded in "..functionName..".\n"..v.."\nLength: "..tostring(Characters).."\nLimit: "..CharacterLimit,3)
				end
			end
		end]]
	
		if v ~= nil then
			if first then
				first = false
			else
				Args = Args..","
			end
			Args = Args.."\""
			Args = Args..tostring(v)
			Args = Args.."\""
		end
	end
	
	-- Outpu
	Output(functionName.."("..Args..");")
end

function HandleDummyFunction(functionName)
	print("Dummy Function called: "..functionName)
end

function AddVehicleSelectInfo(...)
	HandleDummyFunction("AddVehicleSelectInfo")
end

function ClearVehicleSelectInfo(...)
	HandleDummyFunction("ClearVehicleSelectInfo")
end

function AddFlyingActor(...)
	HandleMFKFunction(5,5,"AddFlyingActor",...)
end

function AddFlyingActorByLocator(...)
	HandleMFKFunction(3,4,"AddFlyingActorByLocator",...)
end

function AddBehaviour(...)
	HandleMFKFunction(2,7,"AddBehaviour",...)
end

function SetCollisionAttributes(...)
	HandleMFKFunction(4,4,"SetCollisionAttributes",...)
end

function AddSpawnPoint(...)
	HandleMFKFunction(8,8,"AddSpawnPoint",...)
end

function AddSpawnPointByLocatorScript(...)
	HandleMFKFunction(6,6,"AddSpawnPointByLocatorScript",...)
end

function SetProjectileStats(...)
	HandleMFKFunction(3,3,"SetProjectileStats",...)
end

function PreallocateActors(...)
	HandleMFKFunction(2,2,"PreallocateActors",...)
end

function SetActorRotationSpeed(...)
	HandleMFKFunction(2,2,"SetActorRotationSpeed",...)
end

function AddShield(...)
	HandleMFKFunction(2,2,"AddShield",...)
end

function ClearGagBindings(...)
	HandleMFKFunction(0,0,"ClearGagBindings",...)
end

function AddGagBinding(...)
	HandleMFKFunction(5,5,"AddGagBinding",...)
end

function GagBegin(...)
	HandleMFKFunction(1,1,"GagBegin",...)
end

function GagSetInterior(...)
	HandleMFKFunction(1,1,"GagSetInterior",...)
end

function GagSetCycle(...)
	HandleMFKFunction(1,1,"GagSetCycle",...)
end

function GagSetWeight(...)
	HandleMFKFunction(1,1,"GagSetWeight",...)
end

function GagSetSound(...)
	HandleMFKFunction(1,1,"GagSetSound",...)
end

function GagSetTrigger(...)
	HandleMFKFunction(3,5,"GagSetTrigger",...)
end

function GagPlayFMV(...)
	HandleMFKFunction(1,1,"GagPlayFMV",...)
end

function GagSetPosition(...)
	HandleMFKFunction(1,3,"GagSetPosition",...)
end

function GagSetRandom(...)
	HandleMFKFunction(1,1,"GagSetRandom",...)
end

function GagSetIntro(...)
	HandleMFKFunction(1,1,"GagSetIntro",...)
end

function GagSetOutro(...)
	HandleMFKFunction(1,1,"GagSetOutro",...)
end

function GagSetCameraShake(...)
	HandleMFKFunction(2,3,"GagSetCameraShake",...)
end

function GagSetCoins(...)
	HandleMFKFunction(1,2,"GagSetCoins",...)
end

function GagSetSparkle(...)
	HandleMFKFunction(1,1,"GagSetSparkle",...)
end

function GagSetAnimCollision(...)
	HandleMFKFunction(1,1,"GagSetAnimCollision",...)
end

function GagEnd(...)
	HandleMFKFunction(0,0,"GagEnd",...)
end

function GagSetLoadDistances(...)
	HandleMFKFunction(2,2,"GagSetLoadDistances",...)
end

function GagSetSoundLoadDistances(...)
	HandleMFKFunction(2,2,"GagSetSoundLoadDistances",...)
end

function GagSetPersist(...)
	HandleMFKFunction(1,1,"GagSetPersist",...)
end

function GagCheckCollCards(...)
	HandleMFKFunction(5,5,"GagCheckCollCards",...)
end

function GagCheckMovie(...)
	HandleMFKFunction(4,4,"GagCheckMovie",...)
end

function SetMass(...)
	HandleMFKFunction(1,1,"SetMass",...)
end

function SetGasScale(...)
	HandleMFKFunction(1,1,"SetGasScale",...)
end

function SetHighSpeedGasScale(...)
	HandleMFKFunction(1,1,"SetHighSpeedGasScale",...)
end

function SetGasScaleSpeedThreshold(...)
	HandleMFKFunction(1,1,"SetGasScaleSpeedThreshold",...)
end

function SetSlipGasScale(...)
	HandleMFKFunction(1,1,"SetSlipGasScale",...)
end

function SetBrakeScale(...)
	HandleMFKFunction(1,1,"SetBrakeScale",...)
end

function SetTopSpeedKmh(...)
	HandleMFKFunction(1,1,"SetTopSpeedKmh",...)
end

function SetMaxWheelTurnAngle(...)
	HandleMFKFunction(1,1,"SetMaxWheelTurnAngle",...)
end

function SetHighSpeedSteeringDrop(...)
	HandleMFKFunction(1,1,"SetHighSpeedSteeringDrop",...)
end

function SetTireGrip(...)
	HandleMFKFunction(1,1,"SetTireGrip",...)
end

function SetNormalSteering(...)
	HandleMFKFunction(1,1,"SetNormalSteering",...)
end

function SetSlipSteering(...)
	HandleMFKFunction(1,1,"SetSlipSteering",...)
end

function SetEBrakeEffect(...)
	HandleMFKFunction(1,1,"SetEBrakeEffect",...)
end

function SetCMOffsetX(...)
	HandleMFKFunction(1,1,"SetCMOffsetX",...)
end

function SetCMOffsetY(...)
	HandleMFKFunction(1,1,"SetCMOffsetY",...)
end

function SetCMOffsetZ(...)
	HandleMFKFunction(1,1,"SetCMOffsetZ",...)
end

function SetSuspensionLimit(...)
	HandleMFKFunction(1,1,"SetSuspensionLimit",...)
end

function SetSpringK(...)
	HandleMFKFunction(1,1,"SetSpringK",...)
end

function SetDamperC(...)
	HandleMFKFunction(1,1,"SetDamperC",...)
end

function SetSuspensionYOffset(...)
	HandleMFKFunction(1,1,"SetSuspensionYOffset",...)
end

function SetHitPoints(...)
	HandleMFKFunction(1,1,"SetHitPoints",...)
end

function SetBurnoutRange(...)
	HandleMFKFunction(1,1,"SetBurnoutRange",...)
end

function SetMaxSpeedBurstTime(...)
	HandleMFKFunction(1,1,"SetMaxSpeedBurstTime",...)
end

function SetDonutTorque(...)
	HandleMFKFunction(1,1,"SetDonutTorque",...)
end

function SetSlipSteeringNoEBrake(...)
	HandleMFKFunction(1,1,"SetSlipSteeringNoEBrake",...)
end

function SetSlipEffectNoEBrake(...)
	HandleMFKFunction(1,1,"SetSlipEffectNoEBrake",...)
end

function SetWeebleOffset(...)
	HandleMFKFunction(1,1,"SetWeebleOffset",...)
end

function SetWheelieRange(...)
	HandleMFKFunction(1,1,"SetWheelieRange",...)
end

function SetWheelieOffsetY(...)
	HandleMFKFunction(1,1,"SetWheelieOffsetY",...)
end

function SetWheelieOffsetZ(...)
	HandleMFKFunction(1,1,"SetWheelieOffsetZ",...)
end

function SetShadowAdjustments(...)
	HandleMFKFunction(8,8,"SetShadowAdjustments",...)
end

function SetShininess(...)
	HandleMFKFunction(1,1,"SetShininess",...)
end

function SetDriver(...)
	HandleMFKFunction(1,1,"SetDriver",...)
end

function SetGamblingOdds(...)
	HandleMFKFunction(1,1,"SetGamblingOdds",...)
end

function SetHasDoors(...)
	HandleMFKFunction(1,1,"SetHasDoors",...)
end

function SetCharactersVisible(...)
	HandleMFKFunction(1,1,"SetCharactersVisible",...)
end

function SetIrisTransition(...)
	HandleMFKFunction(1,1,"SetIrisTransition",...)
end

function SetAllowSeatSlide(...)
	HandleMFKFunction(1,1,"SetAllowSeatSlide",...)
end

function SetHighRoof(...)
	HandleMFKFunction(1,1,"SetHighRoof",...)
end

function SetCharacterScale(...)
	HandleMFKFunction(1,1,"SetCharacterScale",...)
end

function SuppressDriver(...)
	HandleMFKFunction(1,1,"SuppressDriver",...)
end

function InitLevelPlayerVehicle(...)
	HandleMFKFunction(3,4,"InitLevelPlayerVehicle",...)
end

function PlacePlayerCar(...)
	HandleMFKFunction(2,2,"PlacePlayerCar",...)
end

function AddPurchaseCarReward(...)
	HandleMFKFunction(5,6,"AddPurchaseCarReward",...)
end

function SetPostLevelFMV(...)
	HandleMFKFunction(1,1,"SetPostLevelFMV",...)
end

function CreatePedGroup(...)
	HandleMFKFunction(1,1,"CreatePedGroup",...)
end

function AddPed(...)
	HandleMFKFunction(2,2,"AddPed",...)
end

function ClosePedGroup(...)
	HandleMFKFunction(0,0,"ClosePedGroup",...)
end

function UsePedGroup(...)
	HandleMFKFunction(1,1,"UsePedGroup",...)
end

function BindReward(...)
	HandleMFKFunction(5,7,"BindReward",...)
end

function CreateTrafficGroup(...)
	HandleMFKFunction(1,1,"CreateTrafficGroup",...)
end

function AddTrafficModel(...)
	HandleMFKFunction(2,3,"AddTrafficModel",...)
end

function CloseTrafficGroup(...)
	HandleMFKFunction(0,0,"CloseTrafficGroup",...)
end

function SetCarAttributes(...)
	HandleMFKFunction(5,5,"SetCarAttributes",...)
end

function SetTotalGags(...)
	HandleMFKFunction(2,2,"SetTotalGags",...)
end

function SetTotalWasps(...)
	HandleMFKFunction(2,2,"SetTotalWasps",...)
end

function AddGlobalProp(...)
	HandleMFKFunction(1,1,"AddGlobalProp",...)
end

function CreateChaseManager(...)
	HandleMFKFunction(3,3,"CreateChaseManager",...)
end

function DisableHitAndRun(...)
	HandleMFKFunction(0,0,"DisableHitAndRun",...)
end

function EnableHitAndRun(...)
	HandleMFKFunction(0,0,"EnableHitAndRun",...)
end

function SetHitAndRunMeter(...)
	HandleMFKFunction(1,1,"SetHitAndRunMeter",...)
end

function SetNumChaseCars(...)
	HandleMFKFunction(1,1,"SetNumChaseCars",...)
end

function SetChaseSpawnRate(...)
	HandleMFKFunction(2,2,"SetChaseSpawnRate",...)
end

function KillAllChaseAI(...)
	HandleMFKFunction(1,1,"KillAllChaseAI",...)
end

function ResetHitAndRun(...)
	HandleMFKFunction(0,0,"ResetHitAndRun",...)
end

function SetHitAndRunDecay(...)
	HandleMFKFunction(1,1,"SetHitAndRunDecay",...)
end

function SetHitAndRunDecayInterior(...)
	HandleMFKFunction(1,1,"SetHitAndRunDecayInterior",...)
end

function AddMission(...)
	HandleMFKFunction(1,1,"AddMission",...)
end

function AddBonusMission(...)
	HandleMFKFunction(1,1,"AddBonusMission",...)
end

function SetMissionNameIndex(...)
	HandleMFKFunction(1,1,"SetMissionNameIndex",...)
end

function SelectMission(...)
	HandleMFKFunction(1,1,"SelectMission",...)
end

function SetMissionResetPlayerInCar(...)
	HandleMFKFunction(1,1,"SetMissionResetPlayerInCar",...)
end

function SetMissionResetPlayerOutCar(...)
	HandleMFKFunction(2,2,"SetMissionResetPlayerOutCar",...)
end

function SetDynaLoadData(...)
	HandleMFKFunction(1,2,"SetDynaLoadData",...)
end

function AddBonusObjective(...)
	HandleMFKFunction(1,2,"AddBonusObjective",...)
end

function SetForcedCar(...)
	HandleMFKFunction(0,0,"SetForcedCar",...)
end

function CloseMission(...)
	HandleMFKFunction(0,0,"CloseMission",...)
end

function SetDemoLoopTime(...)
	HandleMFKFunction(1,1,"SetDemoLoopTime",...)
end

function StreetRacePropsLoad(...)
	HandleMFKFunction(1,1,"StreetRacePropsLoad",...)
end

function StreetRacePropsUnload(...)
	HandleMFKFunction(1,1,"StreetRacePropsUnload",...)
end

function UseElapsedTime(...)
	HandleMFKFunction(0,0,"UseElapsedTime",...)
end

function AttachStatePropCollectible(...)
	HandleMFKFunction(2,2,"AttachStatePropCollectible",...)
end

function ShowHUD(...)
	HandleMFKFunction(1,1,"ShowHUD",...)
end

function SetNumValidFailureHints(...)
	HandleMFKFunction(1,1,"SetNumValidFailureHints",...)
end

function AddStage(...)
	HandleMFKFunction(0,7,"AddStage",...)
end

function SetStageMessageIndex(...)
	HandleMFKFunction(1,2,"SetStageMessageIndex",...)
end

function SetStageTime(...)
	HandleMFKFunction(1,1,"SetStageTime",...)
end

function AddStageTime(...)
	HandleMFKFunction(1,1,"AddStageTime",...)
end

function AddStageVehicle(...)	
	HandleMFKFunction(3,5,"AddStageVehicle",...)
end

function MoveStageVehicle(...)
	HandleMFKFunction(3,3,"MoveStageVehicle",...)
end

function ActivateVehicle(...)
	HandleMFKFunction(3,4,"ActivateVehicle",...)
end

function AddStageWaypoint(...)
	HandleMFKFunction(1,1,"AddStageWaypoint",...)
end

function AddStageCharacter(...)
	HandleMFKFunction(3,5,"AddStageCharacter",...)
end

function AddStageMusicChange(...)
	HandleMFKFunction(0,0,"AddStageMusicChange",...)
end

function SetStageMusicAlwaysOn(...)
	HandleMFKFunction(0,0,"SetStageMusicAlwaysOn",...)
end

function SetCompletionDialog(...)
	HandleMFKFunction(1,2,"SetCompletionDialog",...)
end

function StageStartMusicEvent(...)
	HandleMFKFunction(1,1,"StageStartMusicEvent",...)
end

function SetMusicState(...)
	HandleMFKFunction(2,2,"SetMusicState",...)
end

function SetStageCamera(...)
	HandleMFKFunction(3,3,"SetStageCamera",...)
end

function RESET_TO_HERE(...)
	HandleMFKFunction(0,0,"RESET_TO_HERE",...)
end

function SetMaxTraffic(...)
	HandleMFKFunction(1,1,"SetMaxTraffic",...)
end

function AddSafeZone(...)
	HandleMFKFunction(2,2,"AddSafeZone",...)
end

function SetBonusMissionStart(...)
	HandleMFKFunction(0,0,"SetBonusMissionStart",...)
end

function ShowStageComplete(...)
	HandleMFKFunction(0,0,"ShowStageComplete",...)
end

function SetHUDIcon(...)
	HandleMFKFunction(1,1,"SetHUDIcon",...)
end

function SetIrisWipe(...)
	HandleMFKFunction(1,1,"SetIrisWipe",...)
end

function SetFadeOut(...)
	HandleMFKFunction(1,1,"SetFadeOut",...)
end

function CloseStage(...)
	HandleMFKFunction(0,0,"CloseStage",...)
end

function SetVehicleAIParams(...)
	HandleMFKFunction(3,3,"SetVehicleAIParams",...)
end

function PlacePlayerAtLocatorName(...)
	HandleMFKFunction(1,1,"PlacePlayerAtLocatorName",...)
end

function msPlacePlayerCarAtLocatorName(...)
	HandleMFKFunction(1,1,"msPlacePlayerCarAtLocatorName",...)
end

function SwapInDefaultCar(...)
	HandleMFKFunction(0,0,"SwapInDefaultCar",...)
end

function SetSwapPlayerLocator(...)
	HandleMFKFunction(1,1,"SetSwapPlayerLocator",...)
end

function SetSwapDefaultCarLocator(...)
	HandleMFKFunction(1,1,"SetSwapDefaultCarLocator",...)
end

function SetSwapForcedCarLocator(...)
	HandleMFKFunction(1,1,"SetSwapForcedCarLocator",...)
end

function NoTrafficForStage(...)
	HandleMFKFunction(0,0,"NoTrafficForStage",...)
end

function ClearTrafficForStage(...)
	HandleMFKFunction(0,0,"ClearTrafficForStage",...)
end

function SetStageAIRaceCatchupParams(...)
	HandleMFKFunction(5,5,"SetStageAIRaceCatchupParams",...)
end

function SetStageAIEvadeCatchupParams(...)
	HandleMFKFunction(3,3,"SetStageAIEvadeCatchupParams",...)
end

function SetStageAITargetCatchupParams(...)
	HandleMFKFunction(3,3,"SetStageAITargetCatchupParams",...)
end

function SetCharacterToHide(...)
	HandleMFKFunction(1,1,"SetCharacterToHide",...)
end

function SetLevelOver(...)
	HandleMFKFunction(0,0,"SetLevelOver",...)
end

function SetGameOver(...)
	HandleMFKFunction(0,0,"SetGameOver",...)
end

function StayInBlack(...)
	HandleMFKFunction(0,0,"StayInBlack",...)
end

function AllowMissionAbort(...)
	HandleMFKFunction(1,1,"AllowMissionAbort",...)
end

function SetParTime(...)
	HandleMFKFunction(1,1,"SetParTime",...)
end

function SetRaceEnteryFee(...)
	HandleMFKFunction(1,1,"SetRaceEnteryFee",...)
end

function PutMFPlayerInCar(...)
	HandleMFKFunction(0,0,"PutMFPlayerInCar",...)
end

function SetStatepropShadow(...)
	HandleMFKFunction(2,2,"SetStatepropShadow",...)
end

function AddObjective(...)
	HandleMFKFunction(1,3,"AddObjective",...)
end

function CloseObjective(...)
	HandleMFKFunction(0,0,"CloseObjective",...)
end

function SetDestination(...)
	HandleMFKFunction(1,3,"SetDestination",...)
end

function AddNPC(...)
	HandleMFKFunction(2,3,"AddNPC",...)
end

function RemoveNPC(...)
	HandleMFKFunction(1,1,"RemoveNPC",...)
end

function AddDriver(...)
	HandleMFKFunction(2,2,"AddDriver",...)
end

function RemoveDriver(...)
	HandleMFKFunction(1,1,"RemoveDriver",...)
end

function SetTalkToTarget(...)
	HandleMFKFunction(1,4,"SetTalkToTarget",...)
end

function SetDialogueInfo(...)
	HandleMFKFunction(4,4,"SetDialogueInfo",...)
end

function SetDialoguePositions(...)
	HandleMFKFunction(2,4,"SetDialoguePositions",...)
end

function SetRaceLaps(...)
	HandleMFKFunction(1,1,"SetRaceLaps",...)
end

function TurnGotoDialogOff(...)
	HandleMFKFunction(0,0,"TurnGotoDialogOff",...)
end

function MustActionTrigger(...)
	HandleMFKFunction(0,0,"MustActionTrigger",...)
end

function SetCoinFee(...)
	HandleMFKFunction(1,1,"SetCoinFee",...)
end

function SetDurationTime(...)
	HandleMFKFunction(1,1,"SetDurationTime",...)
end

function AddCollectible(...)
	HandleMFKFunction(1,4,"AddCollectible",...)
end

function SetCollectibleEffect(...)
	HandleMFKFunction(1,1,"SetCollectibleEffect",...)
end

function BindCollectibleTo(...)
	HandleMFKFunction(2,2,"BindCollectibleTo",...)
end

function AllowUserDump(...)
	HandleMFKFunction(0,0,"AllowUserDump",...)
end

function SetVehicleToLoad(...)
	HandleMFKFunction(3,3,"SetVehicleToLoad",...)
end

function SetObjTargetVehicle(...)
	HandleMFKFunction(1,1,"SetObjTargetVehicle",...)
end

function SetObjDistance(...)
	HandleMFKFunction(1,1,"SetObjDistance",...)
end

function SetObjTargetBoss(...)
	HandleMFKFunction(1,1,"SetObjTargetBoss",...)
end

function AddCollectibleStateProp(...)
	HandleMFKFunction(3,3,"AddCollectibleStateProp",...)
end

function SetPickupTarget(...)
	HandleMFKFunction(1,1,"SetPickupTarget",...)
end

function AllowRockOut(...)
	HandleMFKFunction(0,0,"AllowRockOut",...)
end

function AddCondition(...)
	HandleMFKFunction(1,2,"AddCondition",...)
end

function CloseCondition(...)
	HandleMFKFunction(0,0,"CloseCondition",...)
end

function SetFollowDistances(...)
	HandleMFKFunction(2,2,"SetFollowDistances",...)
end

function SetCondTargetVehicle(...)
	HandleMFKFunction(1,1,"SetCondTargetVehicle",...)
end

function SetConditionPosition(...)
	HandleMFKFunction(1,1,"SetConditionPosition",...)
end

function SetCondTime(...)
	HandleMFKFunction(1,1,"SetCondTime",...)
end

function SetHitNRun(...)
	HandleMFKFunction(0,0,"SetHitNRun",...)
end

function EnableTutorialMode(...)
	HandleMFKFunction(1,1,"EnableTutorialMode",...)
end

function SetConversationCamName(...)
	HandleMFKFunction(1,1,"SetConversationCamName",...)
end

function SetConversationCamPcName(...)
	HandleMFKFunction(1,1,"SetConversationCamPcName",...)
end

function SetConversationCamNpcName(...)
	HandleMFKFunction(1,1,"SetConversationCamNpcName",...)
end

function SetConversationCam(...)
	HandleMFKFunction(2,3,"SetConversationCam",...)
end

function SetConversationCamDistance(...)
	HandleMFKFunction(2,2,"SetConversationCamDistance",...)
end

function AmbientAnimationRandomize(...)
	HandleMFKFunction(2,2,"AmbientAnimationRandomize",...)
end

function ClearAmbientAnimations(...)
	HandleMFKFunction(1,1,"ClearAmbientAnimations",...)
end

function AddAmbientPcAnimation(...)
	HandleMFKFunction(1,2,"AddAmbientPcAnimation",...)
end

function AddAmbientNpcAnimation(...)
	HandleMFKFunction(1,2,"AddAmbientNpcAnimation",...)
end

function CharacterIsChild(...)
	HandleMFKFunction(1,1,"CharacterIsChild",...)
end

function SetPresentationBitmap(...)
	HandleMFKFunction(1,1,"SetPresentationBitmap",...)
end

function SetAnimCamMulticontName(...)
	HandleMFKFunction(1,1,"SetAnimCamMulticontName",...)
end

function SetAnimatedCameraName(...)
	HandleMFKFunction(1,1,"SetAnimatedCameraName",...)
end

function SetMissionStartMulticontName(...)
	HandleMFKFunction(1,1,"SetMissionStartMulticontName",...)
end

function SetMissionStartCameraName(...)
	HandleMFKFunction(1,1,"SetMissionStartCameraName",...)
end

function SetCamBestSide(...)
	HandleMFKFunction(1,2,"SetCamBestSide",...)
end

function SetFMVInfo(...)
	HandleMFKFunction(1,2,"SetFMVInfo",...)
end

function StartCountdown(...)
	HandleMFKFunction(1,2,"StartCountdown",...)
end

function AddToCountdownSequence(...)
	HandleMFKFunction(1,2,"AddToCountdownSequence",...)
end

function SetCarStartCamera(...)
	HandleMFKFunction(1,1,"SetCarStartCamera",...)
end

function GoToPsScreenWhenDone(...)
	HandleMFKFunction(0,0,"GoToPsScreenWhenDone",...)
end

function SetPlayerCarName(...)
	HandleMFKFunction(2,2,"SetPlayerCarName",...)
end

function SetCondMinHealth(...)
	HandleMFKFunction(1,1,"SetCondMinHealth",...)
end

function LoadP3DFile(...)
	HandleMFKFunction(1,3,"LoadP3DFile",...)
end

function LoadDisposableCar(...)
	HandleMFKFunction(3,3,"LoadDisposableCar",...)
end

function SetRespawnRate(...)
	HandleMFKFunction(2,2,"SetRespawnRate",...)
end

function AddCharacter(...)
	HandleMFKFunction(2,2,"AddCharacter",...)
end

function AddNPCCharacterBonusMission(...)
	HandleMFKFunction(7,8,"AddNPCCharacterBonusMission",...)
end

function SetBonusMissionDialoguePos(...)
	HandleMFKFunction(3,4,"SetBonusMissionDialoguePos",...)
end

function AddAmbientCharacter(...)
	HandleMFKFunction(2,3,"AddAmbientCharacter",...)
end

function AddBonusMissionNPCWaypoint(...)
	HandleMFKFunction(2,2,"AddBonusMissionNPCWaypoint",...)
end

function AddObjectiveNPCWaypoint(...)
	HandleMFKFunction(2,2,"AddObjectiveNPCWaypoint",...)
end

function AddAmbientNPCWaypoint(...)
	HandleMFKFunction(2,2,"AddAmbientNPCWaypoint",...)
end

function AddPurchaseCarNPCWaypoint(...)
	HandleMFKFunction(2,2,"AddPurchaseCarNPCWaypoint",...)
end

function ActivateTrigger(...)
	HandleMFKFunction(1,1,"ActivateTrigger",...)
end

function DeactivateTrigger(...)
	HandleMFKFunction(1,1,"DeactivateTrigger",...)
end

function CreateAnimPhysObject(...)
	HandleMFKFunction(2,2,"CreateAnimPhysObject",...)
end

function CreateActionEventTrigger(...)
	HandleMFKFunction(5,5,"CreateActionEventTrigger",...)
end

function LinkActionToObjectJoint(...)
	HandleMFKFunction(5,5,"LinkActionToObjectJoint",...)
end

function LinkActionToObject(...)
	HandleMFKFunction(5,5,"LinkActionToObject",...)
end

function SetCoinDrawable(...)
	HandleMFKFunction(1,1,"SetCoinDrawable",...)
end

function SetParticleTexture(...)
	HandleMFKFunction(2,2,"SetParticleTexture",...)
end

function SetCharacterPosition(...)
	HandleMFKFunction(3,3,"SetCharacterPosition",...)
end

function ResetCharacter(...)
	HandleMFKFunction(2,2,"ResetCharacter",...)
end

function AddTeleportDest(...)
	HandleMFKFunction(3,5,"AddTeleportDest",...)
end

function SetInitialWalk(...)
	HandleMFKFunction(1,1,"SetInitialWalk",...)
end

function SetMass(...)
	HandleMFKFunction(1,1,"SetMass",...)
end

function SetGasScale(...)
	HandleMFKFunction(1,1,"SetGasScale",...)
end

function SetHighSpeedGasScale(...)
	HandleMFKFunction(1,1,"SetHighSpeedGasScale",...)
end

function SetGasScaleSpeedThreshold(...)
	HandleMFKFunction(1,1,"SetGasScaleSpeedThreshold",...)
end

function SetSlipGasScale(...)
	HandleMFKFunction(1,1,"SetSlipGasScale",...)
end

function SetBrakeScale(...)
	HandleMFKFunction(1,1,"SetBrakeScale",...)
end

function SetTopSpeedKmh(...)
	HandleMFKFunction(1,1,"SetTopSpeedKmh",...)
end

function SetMaxWheelTurnAngle(...)
	HandleMFKFunction(1,1,"SetMaxWheelTurnAngle",...)
end

function SetHighSpeedSteeringDrop(...)
	HandleMFKFunction(1,1,"SetHighSpeedSteeringDrop",...)
end

function SetTireGrip(...)
	HandleMFKFunction(1,1,"SetTireGrip",...)
end

function SetNormalSteering(...)
	HandleMFKFunction(1,1,"SetNormalSteering",...)
end

function SetSlipSteering(...)
	HandleMFKFunction(1,1,"SetSlipSteering",...)
end

function SetEBrakeEffect(...)
	HandleMFKFunction(1,1,"SetEBrakeEffect",...)
end

function SetCMOffsetX(...)
	HandleMFKFunction(1,1,"SetCMOffsetX",...)
end

function SetCMOffsetY(...)
	HandleMFKFunction(1,1,"SetCMOffsetY",...)
end

function SetCMOffsetZ(...)
	HandleMFKFunction(1,1,"SetCMOffsetZ",...)
end

function SetSuspensionLimit(...)
	HandleMFKFunction(1,1,"SetSuspensionLimit",...)
end

function SetSpringK(...)
	HandleMFKFunction(1,1,"SetSpringK",...)
end

function SetDamperC(...)
	HandleMFKFunction(1,1,"SetDamperC",...)
end

function SetSuspensionYOffset(...)
	HandleMFKFunction(1,1,"SetSuspensionYOffset",...)
end

function SetHitPoints(...)
	HandleMFKFunction(1,1,"SetHitPoints",...)
end

function SetBurnoutRange(...)
	HandleMFKFunction(1,1,"SetBurnoutRange",...)
end

function SetMaxSpeedBurstTime(...)
	HandleMFKFunction(1,1,"SetMaxSpeedBurstTime",...)
end

function SetDonutTorque(...)
	HandleMFKFunction(1,1,"SetDonutTorque",...)
end

function SetSlipSteeringNoEBrake(...)
	HandleMFKFunction(1,1,"SetSlipSteeringNoEBrake",...)
end

function SetSlipEffectNoEBrake(...)
	HandleMFKFunction(1,1,"SetSlipEffectNoEBrake",...)
end

function SetWeebleOffset(...)
	HandleMFKFunction(1,1,"SetWeebleOffset",...)
end

function SetWheelieRange(...)
	HandleMFKFunction(1,1,"SetWheelieRange",...)
end

function SetWheelieOffsetY(...)
	HandleMFKFunction(1,1,"SetWheelieOffsetY",...)
end

function SetWheelieOffsetZ(...)
	HandleMFKFunction(1,1,"SetWheelieOffsetZ",...)
end

function SetShadowAdjustments(...)
	HandleMFKFunction(8,8,"SetShadowAdjustments",...)
end

function SetShininess(...)
	HandleMFKFunction(1,1,"SetShininess",...)
end

function SetDriver(...)
	HandleMFKFunction(1,1,"SetDriver",...)
end

function SetGamblingOdds(...)
	HandleMFKFunction(1,1,"SetGamblingOdds",...)
end

function SetHasDoors(...)
	HandleMFKFunction(1,1,"SetHasDoors",...)
end

function SetCharactersVisible(...)
	HandleMFKFunction(1,1,"SetCharactersVisible",...)
end

function SetIrisTransition(...)
	HandleMFKFunction(1,1,"SetIrisTransition",...)
end

function SetAllowSeatSlide(...)
	HandleMFKFunction(1,1,"SetAllowSeatSlide",...)
end

function SetHighRoof(...)
	HandleMFKFunction(1,1,"SetHighRoof",...)
end

function SetCharacterScale(...)
	HandleMFKFunction(1,1,"SetCharacterScale",...)
end