-- Mission Load
Game.LoadP3DFile("art\\missions\\level01\\m3.p3d")

-- Props
Game.LoadP3DFile("art\\missions\\level02\\blend.p3d")
Game.LoadP3DFile("art\\missions\\level04\\pills.p3d")
Game.LoadP3DFile("art\\missions\\level06\\lasergun.p3d")
Game.LoadP3DFile("art\\missions\\generic\\fline.p3d")

-- Hud Icons
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_kburg.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_kbur2.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_dmv.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_park.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_moes.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_statio.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_statue.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_sign.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_stad.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\char\\w_krust.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_race.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_pills.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_blend.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_laser.p3d" )

-- Vehicles
Game.LoadDisposableCar("art\\cars\\cKlimo.p3d","cKlimo","AI")
Game.LoadDisposableCar("art\\cars\\cKlim2.p3d","cKlim2","AI")
Game.LoadDisposableCar("art\\cars\\krust_v.p3d","krust_v","AI")
Game.LoadDisposableCar("art\\cars\\krust2.p3d","krust2","AI")
Game.LoadDisposableCar("art\\cars\\kboss.p3d","kboss","AI")
Game.LoadDisposableCar("art\\cars\\kboss2.p3d","kboss2","AI")
local Cars = {"kboss","cKlimo"}
Car = Cars[math.random(#Cars)]
local Cars = {"krust_v","krust2"}
Car2 = Cars[math.random(#Cars)]
local Cars = {"kboss2","cKlim2"}
Car3 = Cars[math.random(#Cars)]

--LoadDisposableCar("art\\cars\\ ".. Car ..".p3d", Car, "AI")