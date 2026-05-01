-- P3D Files
-- Test to load reward car m4 onward instead of entire level
--Game.LoadP3DFile("art\\missions\\level01\\l1_rewards.p3d")	--now loads in every sd mission past m3
Game.LoadP3DFile("art\\missions\\generic\\moe_door.p3d")
-- Mission Icons
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_moes.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\char\\w_homer.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\char\\w_moe.p3d" )
-- Vehicle
Game.LoadDisposableCar("art\\cars\\homer_v.p3d","homer_v","AI") -- Replace this with car port later