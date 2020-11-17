local _print = print
local PrintPrefix = "LONG"

function print(...)
	_print(PrintPrefix, ...)
end
-- Store Paths
Paths = {}
Paths.ModPath = GetModPath()
Paths.CustomFiles = Paths.ModPath .. "/CustomFiles"
Paths.Resources = Paths.ModPath .. "/Resources"
Paths.Modules = Paths.Resources.."/scripts/modules"
Paths.Handlers = Paths.Resources.."/scripts/handlers"

function DebugPrint (...)
	if IsHackLoaded("DebugText") then
		local arg = "["..GetMainMod().."]\t"
		for k,v in pairs({...}) do
			arg = arg..v.."\t"
		end
		print(arg)
	end
end

-- Load MFK Functions
--dofile(GetModPath() .. "/Resources/scripts/game.lua")
--Loading modules
dofile(Paths.Modules.."/Settings.lua")
dofile(Paths.Modules.."/game.lua")
dofile(Paths.Modules.."/mode.lua")