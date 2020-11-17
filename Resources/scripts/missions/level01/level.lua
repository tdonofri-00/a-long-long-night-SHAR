Game.AddMission("m0")
Game.AddMission("m1")
Game.AddMission("m2")
Game.AddMission("m3")
Game.AddMission("m4")
Game.AddMission("m5")
Game.AddMission("m6")
Game.AddMission("m7")
Game.AddMission("m8")
Game.AddBonusMission("sr1") -- street race 1 - a time trial
Game.AddBonusMission("sr2") -- street race 2 - circuit race
Game.AddBonusMission("sr3") -- street race 3 - waypoint race
Game.AddBonusMission("gr1") -- street race 4 - waypoint race
Game.AddBonusMission("bm1") -- bonus mission 1

Game.AddTeleportDest("Town Square", 135.3, 8.0, 44.8, "l5z1.p3d;l5r1.p3d;l5r4.p3d;")
Game.AddTeleportDest("Moe's", -166, 7.3, 22.7, "l5z2.p3d;l5r1.p3d;l5r2.p3d;")
Game.AddTeleportDest("Railyard", -379.3, 6.6, 129, "l5r2.p3d;l5z2.p3d;l5z3.p3d;")
Game.AddTeleportDest("Try 'n Save / DMV", -265.8, 6.9, 370.2, "l5z3.p3d;l5r2.p3d;l5r3.p3d;")
Game.AddTeleportDest("Matlock Expy - East Side", -439.8, 20.6, 554.4, "l5r3.p3d;l5z4.p3d;l5z3.p3d;")
Game.AddTeleportDest("Matlock Expy - Downtown", -403.1, 20.6, 616.8, "l5r3.p3d;l5z4.p3d;l5z3.p3d;")
Game.AddTeleportDest("Monorail", -224.4, 28.8, 464.3, "l5z4.p3d;l5r3.p3d;l5r4.p3d;")
Game.AddTeleportDest("Stadium", 137.2, 10.8, 314.5, "l5r4.p3d;l5z1.p3d;l5r1.p3d;")

Game.LoadP3DFile("art\\phonecamera.p3d")
Game.LoadP3DFile("art\\cards.p3d")
Game.LoadP3DFile("art\\wrench.p3d")
Game.LoadP3DFile("art\\missions\\generic\\missgen.p3d")
Game.LoadP3DFile("art\\missions\\generic\\dmv_door.p3d")
Game.LoadP3DFile("art\\l05_fx.p3d","GMA_LEVEL_OTHER")
Game.LoadP3DFile("art\\chars\\bart_kickwave.p3d")
Game.LoadP3DFile("art\\chars\\bart_electrocuted.p3d")
Game.LoadP3DFile("art\\missions\\level01\\l1_doors.p3d")
Game.LoadP3DFile("art\\missions\\level01\\l1_cards.p3d")

-- chase/harass vehicle
Game.LoadP3DFile( "art\\cars\\cPolice.p3d" )

--This is the level WB data that is persistent.
Game.LoadP3DFile("art\\missions\\level01\\level.p3d")

--This is the level "jump boost zones"
Game.LoadP3DFile("art\\missions\\level01\\jumps.p3d")

--Game.Load wasps
Game.LoadP3DFile("art\\missions\\level01\\wasps.p3d")

-- This is the level vehicle, always present
-- 
Game.LoadDisposableCar( "art\\cars\\bart_v.p3d","bart_v","DEFAULT" )

-- Traffic vehicle models
--
Game.LoadP3DFile( "art\\cars\\huskA.p3d" )
Game.LoadP3DFile( "art\\cars\\sportsB.p3d" ) -- sportsA
Game.LoadP3DFile( "art\\cars\\cBone.p3d" ) -- SUVA
Game.LoadP3DFile( "art\\cars\\ambul.p3d" )
Game.LoadP3DFile( "art\\cars\\fishtruc.p3d" ) -- pickupA

Game.AddVehicleSelectInfo( "ART\\CARS\\snake_v.p3d", "snake_v", "snake" )
Game.AddVehicleSelectInfo( "ART\\CARS\\wiggu_v.p3d", "wiggu_v", "wiggum" )
Game.AddVehicleSelectInfo( "ART\\CARS\\cletu_v.p3d", "cletu_v", "cletus" )

Game.SetStatepropShadow( "l5_streetlampbanner", "l5_streetlamp_lightpoolShape" )
Game.SetStatepropShadow( "l5_streetlamp", "l5_streetlamp_lightpoolShape" )
Game.SetStatepropShadow( "l5_oldstreetlamp", "l5_streetlamp_lightpoolShape" )
Game.SetStatepropShadow( "l5_streetlampold", "l5_streetlamp_lightpoolShape" )
Game.SetStatepropShadow( "l5_streetlampsquare", "l5_streetlamp_lightpoolShape" )
Game.SetStatepropShadow( "l5_parkinglight", "l5_streetlamp_lightpoolShape" )


--
--Game.AddING INTERACTIVE GAGS FOR LEVEL 01
--

--Level 5 Dumpster Gag
Game.GagBegin("l5_dump.p3d")
Game.GagSetCycle("single")
Game.GagSetPosition(-47.669, 28.76, 393.687)
Game.GagSetSparkle(1)
Game.GagSetRandom(0)
Game.GagSetSound("gag_lvl2_dumpster")
Game.GagSetTrigger("action", -47.123, -28.76, 395.356, 2.4)
Game.GagSetPersist(1)
Game.GagSetCoins(1, -1)
Game.GagEnd()


--Game.Suppress Characters from being Drivers
--
Game.SuppressDriver("apu")
Game.SuppressDriver("louie")
Game.SuppressDriver("hibbert")
Game.SuppressDriver("homer")
Game.SuppressDriver("krusty")
Game.SuppressDriver("wiggum")
Game.SuppressDriver("snake")
Game.SuppressDriver("bart")
--Game.SuppressDriver("frink") --bonus mission character
Game.SuppressDriver("milhouse")
Game.SuppressDriver("gil")
Game.SuppressDriver("ralph")
Game.SuppressDriver("nelson")
Game.SuppressDriver("patty")
Game.SuppressDriver("selma")
Game.SuppressDriver("barney")
--Game.SuppressDriver("moe")
Game.SuppressDriver("jasper")
Game.SuppressDriver("lenny")
Game.SuppressDriver("grandpa")
Game.SuppressDriver("otto")


--Game.Load DemoCams
Game.LoadP3DFile("art\\missions\\level02\\democams.p3d")