if GetSetting("TestM8") then
	dofile(Paths.Resources .. "/scripts/missions/level01/m8sdl.lua")
	return
end

Flags.M7UseArenaIntroCam = true

Game.LoadP3DFile("art/missions/level01/m7sd.p3d")
--Game.LoadP3DFile("art\\missions\\level01\\l1_rewards.p3d")

--icons
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_hotel.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_snakec.p3d" )

--vehicles
Game.LoadDisposableCar("art\\cars\\cLimo2.p3d","cLimo2","AI")
Game.LoadDisposableCar("art\\cars\\snake_v.p3d","snake_v","AI")
Game.LoadDisposableCar("art\\cars\\cPolic3.p3d","cPolic3","AI")
Game.LoadDisposableCar("art\\cars\\krust_v.p3d","krust_v","AI")