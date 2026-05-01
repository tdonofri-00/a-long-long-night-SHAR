Mode = {}

Mode.Current = GetSetting("Mode") + 1

Mode.NormalMode = 1
Mode.HardMode = 2

Mode.IsNormal = Mode.Current == Mode.NormalMode
Mode.IsHard = Mode.Current == Mode.HardMode

Mode.FailHintCount = 3 + Mode.Current
if Mode.FailHintCount < 4 then
	Mode.FailHintCount = 4
end