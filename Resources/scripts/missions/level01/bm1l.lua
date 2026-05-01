Flags.UseApuIntro = true

Game.SetPresentationBitmap( "art/frontend/dynaload/images/mis01_08.p3d" )

Game.LoadP3DFile("art\\missions\\level01\\bm1.p3d")
Game.LoadP3DFile("art\\missions\\level01\\bm1_cam.p3d")

Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_dmv.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\object\\w_bmitem.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_kburg.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_f40.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_kwik.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\vehicle\\w_bmgoons.p3d" )
Game.LoadP3DFile( "art\\frontend\\dynaload\\images\\msnicons\\location\\w_wash.p3d" )

Game.LoadP3DFile("art\\missions\\level01\\kwikedog.p3d")
Game.LoadP3DFile("art\\missions\\level01\\squishee.p3d")
Game.LoadP3DFile("art\\missions\\level01\\kwikmag.p3d")
Game.LoadP3DFile("art\\missions\\level01\\butterfinger.p3d")
--Game.LoadP3DFile("art\\missions\\level05\\litter.p3d")	--placeholder

Game.LoadDisposableCar("art/cars/kwik_v.p3d", "kwik_v", "AI")
Game.LoadDisposableCar("art/cars/f40.p3d", "f40", "AI")
Game.LoadDisposableCar("art/cars/f40sr2.p3d", "f40sr2", "AI")
Game.LoadDisposableCar("art/cars/spyder.p3d", "spyder", "AI")