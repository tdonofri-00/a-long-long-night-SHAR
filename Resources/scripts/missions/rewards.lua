-- SYNTAX:
--
-- Game.BindReward( <name>, <filename>, <reward type>, <quest type>, <level> )
--
-- or
--
-- Game.BindReward( <name>, <filename>, <reward type>, "forsale", <level>, <coin cost>, <seller> )
--
-- Level 1
-- TOTAL Cost: $2,600
Game.BindReward( "lambo", "art\\cars\\lambo.p3d", "car", "defaultcar", 1 )
Game.BindReward( "spyder", "art\\cars\\spyder.p3d", "car", "streetrace", 1 )
Game.BindReward( "billbord", "art\\cars\\billbord.p3d", "car", "forsale", 1, 300, "simpson" )
Game.BindReward( "cPolic3", "art\\cars\\cPolic3.p3d", "car", "forsale", 1, 200, "simpson" )
Game.BindReward( "black", "art\\cars\\black.p3d", "car", "forsale", 1, 500, "gil" )
Game.BindReward( "yellow", "art\\cars\\yellow.p3d", "car", "forsale", 1, 500, "gil" )
Game.BindReward( "snake_v", "art\\cars\\snake_v.p3d", "car", "forsale", 1, 250, "gil" )
Game.BindReward( "homer_v", "art\\cars\\homer_v.p3d", "car", "forsale", 1, 250, "gil" )
Game.BindReward( "f40", "art\\cars\\f40.p3d", "car", "bonusmission", 1 )

Game.BindReward( "bart", "art\\chars\\bart_m.p3d", "skin", "defaultskin", 1 )
Game.BindReward( "b_off", "art\\chars\\b_off_m.p3d", "skin", "forsale", 1, 200, "interior" )
Game.BindReward( "b_80", "art\\chars\\b_80_m.p3d", "skin", "forsale", 1, 200, "interior" )	--how did i not notice this until late July?
Game.BindReward( "b_agent", "art\\chars\\b_agen_m.p3d", "skin", "forsale", 1, 200, "interior" )	-- well, two wasn't enough.

Game.SetTotalGags( 1, 5 )	--if the easter egg is supposed to be very secret, then it shouldn't count towards the gag total.
Game.SetTotalWasps(1, 21)


-- Car Attributes (top speed, acceleration, toughness, handling)
-- Level 1
Game.SetCarAttributes( "lambo", 4, 4, 1.5, 5 )
Game.SetCarAttributes( "spyder", 5.0, 4.5, 1.0, 5 )
--Game.SetCarAttributes( "billbord", 5.0, 3.0, 2, 2.5 )
Game.SetCarAttributes( "billbord", 4.5, 3.0, 1.5, 2.5 )	-- these stats were to discourage players from using it outside of M5.
Game.SetCarAttributes( "black", 4.5, 4.5, 1.0, 5 )
Game.SetCarAttributes( "yellow", 4.5, 4.5, 1.0, 5 )
Game.SetCarAttributes( "snake_v", 4.5, 4, 2.5, 4.5 )
Game.SetCarAttributes( "homer_v", 4.5, 4.5, 2.0, 4 )
Game.SetCarAttributes( "cPolic3", 4.5, 4.5, 2.0, 4 )
Game.SetCarAttributes( "f40", 5, 5, 0.5, 5 )
Game.SetCarAttributes( "ned_v", 5.0, 4.5, 1.0, 5 )