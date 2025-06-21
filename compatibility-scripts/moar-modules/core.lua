for i = 4,6 do
	UpdateSpeedModule("mm-speed-module"..GetTextIndex(i), i)
	UpdateEfficiencyModule("mm-effectivity-module"..GetTextIndex(i), i)
	UpdateProductivityModule("mm-productivity-module"..GetTextIndex(i), i)
end
