Game.LoadP3DFile("art/missions/level01/m7.p3d")
Game.LoadP3DFile("art/missions/level01/m7_ending_animcam.p3d")

if Flags.M7UseArenaIntroCam then
	Game.LoadP3DFile("art/missions/level01/m7_intro_animcam.p3d")
end

--collectibles
Game.LoadP3DFile("art\\missions\\level03\\kmeal.p3d")
Game.LoadP3DFile("art\\missions\\level02\\firewrks.p3d")
--Game.LoadP3DFile("art\\missions\\level06\\lasergun.p3d")
--Game.LoadP3DFile("art\\missions\\level01\\blankbox.p3d")
Game.LoadP3DFile("art\\missions\\level01\\duffbox.p3d")
Game.LoadP3DFile("art\\missions\\level01\\cd.p3d")

--icons
--Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_fire.p3d" )	--placeholder
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_m7item.p3d" )
--Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_snakec.p3d" )	--also placeholder
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_m7enemy.p3d" )

--vehicles
Game.LoadDisposableCar("art\\cars\\cLimo2.p3d","cLimo2","AI")
Game.LoadDisposableCar("art\\cars\\snake_v.p3d","snake_v","AI")
Game.LoadDisposableCar("art\\cars\\cPolic3.p3d","cPolic3","AI")
Game.LoadDisposableCar("art\\cars\\krust_v.p3d","krust_v","AI")