-- Store Paths
ModPath = GetModPath()
Resources = ModPath .. "/Resources"

-- Load MFK Functions
dofile(GetModPath() .. "/Resources/scripts/game.lua")
dofile(Resources .. "/scripts/classes/mode.lua")