--[[
	concatenate the dialog SPT with the one with new dialog.
	this should allow people with the international version
	of SHAR to avoid staring contests and missing sound errors.
]]

Output(ReadFile("/GameData/" .. GetPath()) .. "\n" .. ReadFile("/GameData/sound/scripts/dialog_new.spt"))