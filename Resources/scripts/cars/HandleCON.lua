local path = GetPath()
local luaPath = Paths.Resources .. "/" .. RemoveFileExtension(path) .. ".lua"

-- use vehicle lua script if it exists
if Exists(luaPath, true, false) then
	dofile(luaPath)
	DebugPrint("LUA script found for " .. path .. ".")
else
	if GetFileName(path) == "kwik_vBM.con" then
		dofile(Paths.Resources .. "/scripts/cars/kwik_v.lua")
		DebugPrint("Using LUA script for kwik_v.")
		return
	end
	DebugPrint("No LUA script for " .. path .. ". Using regular CON file.")
end