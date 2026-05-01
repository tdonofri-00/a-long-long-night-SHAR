Game.EnableTutorialMode( false )
if GetSetting("TestKEMTruck") then
	Game.InitLevelPlayerVehicle("kwik_v","level1_carstart","DEFAULT")
else
	Game.InitLevelPlayerVehicle("lambo","level1_carstart","DEFAULT")
end

Game.AddCharacter("bart","bart")

Game.CreateChaseManager("cPolice","Pursuit\\L5cop.con",1)
Game.SetHitAndRunDecay(1.0)
Game.SetNumChaseCars("2")

Game.ClearAmbientAnimations( "sr1" )
Game.ClearAmbientAnimations( "sr2" )
Game.ClearAmbientAnimations( "sr3" )
Game.ClearAmbientAnimations( "bm1" )

Game.AddNPCCharacterBonusMission("milhouse", "npd", "sr1_mhouse_sd", "sr1", "checkered", "intro", 0, "checkeredfinish" )
Game.SetBonusMissionDialoguePos("sr1", "sr1_bart_talk", "sr1_mhouse_sd", "sr1_car_talk")
	
	Game.SetConversationCam( 0, "pc_near",				"sr1" )
	Game.AddAmbientNpcAnimation( "none",				"sr1" )
	Game.AddAmbientPcAnimation( "dialogue_shaking_fist",	"sr1" )
	
	Game.SetCamBestSide("sr1_bestside",				"sr1" )
	
	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_mhouse_walk1")
	Game.AddBonusMissionNPCWaypoint("milhouse", "sr1_mhouse_walk2")

Game.AddNPCCharacterBonusMission("nelson", "npd", "sr2_nelson_sd", "sr2", "checkered", "intro", 0, "checkeredfinish" )
Game.SetBonusMissionDialoguePos("sr2", "sr2_bart_talk", "sr2_nelson_sd", "sr2_car_talk")

	Game.SetConversationCam( 0, "pc_near",				"sr2" )
	Game.AddAmbientNpcAnimation( "none",				"sr2" )
	Game.AddAmbientPcAnimation( "dialogue_shaking_fist",	"sr2" )
	
	Game.SetCamBestSide("sr2_bestside",				"sr2" )
	
	Game.AddBonusMissionNPCWaypoint("nelson", "sr2_nelson_walk1")
	Game.AddBonusMissionNPCWaypoint("nelson", "sr2_nelson_sd")

Game.AddNPCCharacterBonusMission("ralph", "npd", "sr3_ralph_sd", "sr3", "checkered", "intro", 0, "checkeredfinish" )
Game.SetBonusMissionDialoguePos("sr3","sr3_bart_talk","sr3_ralph_sd","sr3_car_talk")

	Game.SetConversationCam( 0, "pc_near",				"sr3" )
	Game.AddAmbientNpcAnimation( "none",				"sr3" )
	Game.AddAmbientPcAnimation( "dialogue_shaking_fist",	"sr3" )
	
	Game.SetCamBestSide("sr3_bestside",				"sr3" )
	
	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_ralph_walk1")
	Game.AddBonusMissionNPCWaypoint("ralph", "sr3_ralph_walk2")
	
Game.AddNPCCharacterBonusMission("louie", "npd", "sr4_louie_sd", "gr1", "dice", "intro", 0 )

--replayable
--Game.AddNPCCharacterBonusMission("apu", "npd", "bm1_apu_sd", "bm1", "exclamation", "muchapu", 0, "exclamation_shadow")
Game.AddNPCCharacterBonusMission("apu", "npd", "bm1_apu_sd", "bm1", "exclamation", "apuparty", 0, "exclamation_alpha")
	
	Game.SetBonusMissionDialoguePos("bm1","bm1_bart_talk","bm1_apu_sd","bm_carstart")
--Game.AddNPCCharacterBonusMission("apu", "npd", "bm1_apu_sd", "bm1", "exclamation", "muchapu", 1, "exclamation_shadow" )
	
	Game.SetConversationCam( 0, "npc_near",                        	"bm1" )	
	Game.SetConversationCam( 1, "pc_near",                      	"bm1" )
	Game.SetConversationCam( 2, "npc_far",                  		"bm1" )	
	Game.SetConversationCam( 3, "npc_far",                        	"bm1" )
	Game.SetConversationCam( 4, "npc_near",                        	"bm1" )
	Game.SetConversationCam( 5, "pc_far",                        	"bm1" )	--as said at a nearby gas station.
	Game.SetConversationCam( 6, "npc_far",                        	"bm1" )	
	Game.SetConversationCam( 7, "npc_far",                        	"bm1" )	
	Game.SetConversationCam( 8, "npc_near",                        	"bm1" )	
	
	Game.AddAmbientNpcAnimation( "dialogue_shake_hand_in_air",		"bm1" )
	Game.AddAmbientNpcAnimation( "none", 							"bm1" )
	Game.AddAmbientNpcAnimation( "nis_idle1",						"bm1" )
	Game.AddAmbientNpcAnimation( "none",							"bm1" )	
	Game.AddAmbientNpcAnimation( "dialogue_hands_in_air",			"bm1" )
	Game.AddAmbientNpcAnimation( "none", 							"bm1" )
	Game.AddAmbientNpcAnimation( "dialogue_no",						"bm1" )
	Game.AddAmbientNpcAnimation( "none",							"bm1" )
	Game.AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture",	"bm1" )
	
	Game.AddAmbientPcAnimation( "none",							"bm1" )
	Game.AddAmbientPcAnimation( "dialogue_shake_hand_in_air",	"bm1" )
	Game.AddAmbientPcAnimation( "none",							"bm1" )
	Game.AddAmbientPcAnimation( "dialogue_yes",					"bm1" )
	Game.AddAmbientPcAnimation( "none",							"bm1" )
	Game.AddAmbientPcAnimation( "dialogue_cross_arms",			"bm1" )
	Game.AddAmbientPcAnimation( "none",							"bm1" )
	Game.AddAmbientPcAnimation( "dialogue_hands_on_hips",		"bm1" )
	Game.AddAmbientPcAnimation( "none",							"bm1" )
	
	Game.SetCamBestSide("bm_bestside_sd",					"bm1" )
	
	Game.AddBonusMissionNPCWaypoint("apu", "bm1_apu_walk1")
	Game.AddBonusMissionNPCWaypoint("apu", "bm1_apu_sd")
	Game.AddBonusMissionNPCWaypoint("apu", "bm1_apu_walk2")
	Game.AddBonusMissionNPCWaypoint("apu", "bm1_apu_sd")


--Game.AddING AMBIENT CHARACTERS
	Game.AddAmbientCharacter("patty", "ambient_patty",  2.5)  --DMV
	Game.AddAmbientCharacter("selma", "ambient_selma",  0)  --DMV

	Game.AddAmbientCharacter("moe", "ambient_moe",  1.2)  --Moe's


	Game.AddAmbientCharacter("jasper", "ambient_jasper",  0)  --Zone4
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk1" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk2" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk3" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk4" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk5" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk6" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk7" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk10" )
		Game.AddAmbientNPCWaypoint( "jasper", "jasper_walk1" )

	Game.AddAmbientCharacter("lenny", "ambient_lenny",  0)  --Zone2
		Game.AddAmbientNPCWaypoint( "lenny", "lenny_walk1" )
		Game.AddAmbientNPCWaypoint( "lenny", "ambient_lenny" )

	Game.AddAmbientCharacter("grandpa", "ambient_grandpa",  0)  --Zone1
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk1" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk2" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk3" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk4" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk3" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk2" )
		Game.AddAmbientNPCWaypoint( "grandpa", "grandpa_walk1" )

	Game.AddAmbientCharacter("dom", "family",  1.2)  --Zone3
		Game.AddAmbientNPCWaypoint( "dom", "family_walk1" )
		Game.AddAmbientNPCWaypoint( "dom", "family" )
	
--Game.AddING PURCHASE POINTS FOR VEHICLES AND SKINS
--
Game.AddPurchaseCarReward( "gil", "gil", "npd", "gil_loc", 1.3, "gil_car" )
Game.AddPurchaseCarNPCWaypoint("gil", "gil_walk1")
Game.AddPurchaseCarReward( "simpson", "bill_sel", "npd", "billboard_sell", 1.3, "billboard_car" )
Game.AddPurchaseCarNPCWaypoint("bill_sel", "billboard_sell_walk1")

--if you didn't want lou to sell the promotion vehicle, then it's best if he was just an ambient character.
--Game.AddPurchaseCarReward( "police", "pol_sell", "npd", "police_sell", 1.3, "police_car" )
--Game.AddPurchaseCarNPCWaypoint("homer", "homer_walk1")

Game.AddAmbientCharacter("lou", "ambient_lou", 0)
	Game.AddAmbientNPCWaypoint("lou", "lou_walk1")
	Game.AddAmbientNPCWaypoint("lou", "ambient_lou")

--Game.AddING TRAFFIC GROUP FOR LEVEL 05--
--
Game.CreateTrafficGroup( 0 )
	Game.AddTrafficModel( "sportsB",2 )
	Game.AddTrafficModel( "cBone",1,1 )
	Game.AddTrafficModel( "ambul",1,1 )
	Game.AddTrafficModel( "fishtruc",1 )
Game.CloseTrafficGroup( )

--
--Game.AddING PED GROUP FOR LEVEL 05--
--
--Z1
Game.CreatePedGroup( 0 )
Game.AddPed( "olady3", 1 )
Game.AddPed( "boy1", 2 )
Game.AddPed( "male5", 2 )
Game.AddPed( "hooker", 2 )
Game.ClosePedGroup( )

--R1
Game.CreatePedGroup( 1 )
Game.AddPed( "const1", 2 )
Game.AddPed( "const2", 2 )
Game.AddPed( "male3", 2 )
Game.AddPed( "fem2", 1 )
Game.ClosePedGroup( )

--Z2
Game.CreatePedGroup( 2 )
Game.AddPed( "sail2", 2 )
Game.AddPed( "mobstr", 2 )
Game.AddPed( "busm2", 1 )
Game.AddPed( "hooker", 2)
Game.ClosePedGroup( )

--R2
Game.CreatePedGroup( 3 )
Game.AddPed( "sail3", 2 )
Game.AddPed( "bum", 2 )
Game.AddPed( "rednk1", 1 )
Game.AddPed( "const2", 2 )
Game.ClosePedGroup( )

--Z3
Game.CreatePedGroup( 4 )
Game.AddPed( "busm1", 1 )
Game.AddPed( "busw1", 2 )
Game.AddPed( "male6", 2 )
Game.AddPed( "bum", 2 )

Game.ClosePedGroup( )

--Z4
Game.CreatePedGroup( 5 )
Game.AddPed( "male2", 1 )
Game.AddPed( "busw1", 2 )
Game.AddPed( "busm2", 2 )
Game.AddPed( "fem3", 2 )
Game.ClosePedGroup( )

--R4
Game.CreatePedGroup( 6 )
Game.AddPed( "busm1", 1 )
Game.AddPed( "busw1", 2 )
Game.AddPed( "fem2", 2 )
Game.AddPed( "joger2", 2 )
Game.ClosePedGroup( )


--Bind the coin drawable and sparkle texture. The art is loaded in the missgen.p3d file.
-- Yes the name of the p3d tTexture is scratch2.bmp, thanks to p3dimage. No biggie.
Game.SetCoinDrawable( "coinShape_000" )
Game.SetParticleTexture( 0, "scratch2.bmp" ) -- sparkles.
Game.SetParticleTexture( 1, "spark4.bmp" )	 -- sparks when vehicle hits.
Game.SetParticleTexture( 2, "cloud.tga" )	 -- dust cloud when running/jumping.
Game.SetParticleTexture( 3, "cloud.tga" )	 -- leaves when hitting shrubs/trees.
Game.SetParticleTexture( 4, "star.tga" )	 -- stars when hitting something static.
Game.SetParticleTexture( 5, "cloud.tga" )	 -- paint chips when vehicle is damaged.
Game.SetParticleTexture( 6, "halo.bmp" )	 -- Ring for shock wave fx.

-- WASPS --/
Game.PreallocateActors( "beecamera", "3" )
--Game.SetProjectileStats( "waspray", "80.0", "6" )
Game.SetProjectileStats( "waspray", "80.0", "20" )

Game.AddBehaviour( "beecamera", "EVADE_PLAYER", "1.0", "5.0", "1.0", "2.0", "10" )
Game.AddBehaviour( "beecamera", "ATTRACTION", "5","15","5.0")
Game.AddBehaviour( "beecamera", "ATTACK_PLAYER", "20.0", "3.0" , "3.0")
Game.SetActorRotationSpeed( "beecamera", "150.0" )
Game.AddShield( "beecamera", "beeshield" )

-- Create a new spawn point called "catapult spawn point"
-- When within a certain radius, specified by the 4th number, it will retrieve the stateprop
-- called "beecamera" from memory and create a new instance of it named "Shelly" This prop
-- will be positioned at (xyz) location specified by the first 3 numbers
-- Final value is unused at this point (eventually for timeout implementation)

local waspLocatorPrefixes = {"w_z1_roof", "w_r4_stad", "w_z2_legit", "w_r2_train", "w_z3_tns", "w_r3_express", "w_z4_mono"}
local waspTriggerSize = {8, 10, 10, 10, 8, 20, 10}
for i=1, #waspLocatorPrefixes do
	for j=1, 3 do
		local locatorName = waspLocatorPrefixes[i] .. j
		Game.AddSpawnPointByLocatorScript(locatorName, "beecamera", "Shelley", locatorName, waspTriggerSize[i], "30")
	end
end

Game.AddBehaviour( waspLocatorPrefixes[1] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 1,	"ATTRACTION",		"5.0",	"8.0",	"6.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 1,	"EVADE_PLAYER", 	"3.0", 	"6.0", 	"1.0",	"2.0",	"3.0" )
Game.AddBehaviour( waspLocatorPrefixes[1] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 2,	"ATTRACTION",		"5.0",	"11.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 2,	"EVADE_PLAYER", 	"3.0", 	"8.0", 	"1.0",	"2.0",	"4.0" )
Game.AddBehaviour( waspLocatorPrefixes[1] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 3,	"ATTRACTION",		"10.0",	"15.0",	"2.0")
Game.AddBehaviour( waspLocatorPrefixes[1] .. 3,	"EVADE_PLAYER", 	"5.0", 	"8.0", 	"1.0",	"2.0",	"5.0" )

Game.AddBehaviour( waspLocatorPrefixes[2] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 1,	"ATTRACTION",		"3.0",	"6.0",	"4.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 1,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"3.0" )
Game.AddBehaviour( waspLocatorPrefixes[2] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 2,	"ATTRACTION",		"5.0",	"11.0",	"4.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 2,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"4.0" )
Game.AddBehaviour( waspLocatorPrefixes[2] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 3,	"ATTRACTION",		"8.0",	"15.0",	"4.0")
Game.AddBehaviour( waspLocatorPrefixes[2] .. 3,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"5.0" )

Game.AddBehaviour( waspLocatorPrefixes[3] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 1,	"ATTRACTION",		"3.0",	"8.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 1,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )
Game.AddBehaviour( waspLocatorPrefixes[3] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 2,	"ATTRACTION",		"5.0",	"11.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 2,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )
Game.AddBehaviour( waspLocatorPrefixes[3] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 3,	"ATTRACTION",		"8.0",	"15.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[3] .. 3,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )

Game.AddBehaviour( waspLocatorPrefixes[4] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 1,	"ATTRACTION",		"3.0",	"8.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 1,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )
Game.AddBehaviour( waspLocatorPrefixes[4] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 2,	"ATTRACTION",		"5.0",	"11.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 2,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )
Game.AddBehaviour( waspLocatorPrefixes[4] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 3,	"ATTRACTION",		"8.0",	"15.0",	"-1.0")
Game.AddBehaviour( waspLocatorPrefixes[4] .. 3,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"-1.0" )

Game.AddBehaviour( waspLocatorPrefixes[5] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 1,	"ATTRACTION",		"3.0",	"6.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 1,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"3.0" )
Game.AddBehaviour( waspLocatorPrefixes[5] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 2,	"ATTRACTION",		"5.0",	"8.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 2,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"5.0" )
Game.AddBehaviour( waspLocatorPrefixes[5] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 3,	"ATTRACTION",		"8.0",	"10.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[5] .. 3,	"EVADE_PLAYER", 	"2.0", 	"6.0", 	"1.0",	"2.0",	"7.0" )

Game.AddBehaviour( waspLocatorPrefixes[6] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 1,	"ATTRACTION",		"3.0",	"6.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 1,	"EVADE_PLAYER", 	"4.0", 	"8.0", 	"1.0",	"2.0",	"3.0" )
Game.AddBehaviour( waspLocatorPrefixes[6] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 2,	"ATTRACTION",		"5.0",	"8.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 2,	"EVADE_PLAYER", 	"4.0", 	"8.0", 	"1.0",	"2.0",	"5.0" )
Game.AddBehaviour( waspLocatorPrefixes[6] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 3,	"ATTRACTION",		"8.0",	"10.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[6] .. 3,	"EVADE_PLAYER", 	"4.0", 	"8.0", 	"1.0",	"2.0",	"8.0" )

Game.AddBehaviour( waspLocatorPrefixes[7] .. 1,	"ATTACK_PLAYER",	"10.0",	"5.0",	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 1,	"ATTRACTION",		"3.0",	"6.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 1,	"EVADE_PLAYER", 	"1.0", 	"3.0", 	"1.0",	"2.0",	"8.0" )
Game.AddBehaviour( waspLocatorPrefixes[7] .. 2,	"ATTACK_PLAYER",	"15.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 2,	"ATTRACTION",		"5.0",	"8.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 2,	"EVADE_PLAYER", 	"3.0", 	"8.0", 	"1.0",	"2.0",	"10.0" )
Game.AddBehaviour( waspLocatorPrefixes[7] .. 3,	"ATTACK_PLAYER",	"20.0",	"5.0" ,	"1.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 3,	"ATTRACTION",		"8.0",	"10.0",	"8.0")
Game.AddBehaviour( waspLocatorPrefixes[7] .. 3,	"EVADE_PLAYER", 	"4.0", 	"10.0", 	"1.0",	"2.0",	"12.0" )

