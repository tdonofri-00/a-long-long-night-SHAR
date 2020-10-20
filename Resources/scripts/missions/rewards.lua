-- SYNTAX:
--
-- Game.BindReward( <name>, <filename>, <reward type>, <quest type>, <level> )
--
-- or
--
-- Game.BindReward( <name>, <filename>, <reward type>, "forsale", <level>, <coin cost>, <seller> )
--
-- Level 1
-- TOTAL Cost: $750
Game.BindReward( "bart_v", "art\\cars\\bart_v.p3d", "car", "defaultcar", 1 )
--Game.BindReward( "cletu_v", "art\\cars\\cletu_v.p3d", "car", "bonusmission", 1 )
--Game.BindReward( "elect_v", "art\\cars\\elect_v.p3d", "car", "streetrace", 1 )
--Game.BindReward( "plowk_v", "art\\cars\\plowk_v.p3d", "car", "forsale", 1, 150, "simpson" ) --Barney
Game.BindReward( "black", "art\\cars\\black.p3d", "car", "forsale", 1, 125, "gil" )
Game.BindReward( "yellow", "art\\cars\\yellow.p3d", "car", "forsale", 1, 100, "gil" )

Game.BindReward( "bart", "art\\chars\\bart_m.p3d", "skin", "defaultskin", 1 )
-- Fix below
--Game.BindReward( "b_80", "art\\chars\\b_80_m.p3d", "skin", "forsale", 1, 150, "interior" )
--Game.BindReward( "b_football", "art\\chars\\b_foot_m.p3d", "skin", "forsale", 1, 200, "interior" )
--Game.BindReward( "b_ninja", "art\\chars\\b_ninj_m.p3d", "skin", "forsale", 1, 250, "interior" )

Game.SetTotalGags( 5, 6 )


-- Car Attributes (top speed, acceleration, toughness, handling)
-- Level 1
Game.SetCarAttributes( "bart_v", 4, 4, 1.5, 5 )
--Game.SetCarAttributes( "cletu_v", 1, 1, 3.5, 2.5 )
--Game.SetCarAttributes( "elect_v", 2, 1.5, 1.5, 4 )
--Game.SetCarAttributes( "plowk_v", 1.5, 0.5, 5, 1.5 )
Game.SetCarAttributes( "black", 4, 4, 1.5, 5 )
Game.SetCarAttributes( "yellow", 4, 4, 1.5, 5 )

--other vehicles
Game.SetCarAttributes( "gramR_v", 5, 5, 3.5, 3 )