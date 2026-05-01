Settings = GetSettings(GetModName())

for k,v in pairs(Settings) do
	DebugPrint("Setting "..k.." is set to "..tostring(v))
end