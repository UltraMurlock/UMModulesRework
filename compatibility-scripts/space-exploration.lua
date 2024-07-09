for i = 4,9 do
	UpdateSpeedModule("speed-module"..GetTextIndex(i), i)
	UpdateEffectivityModule("effectivity-module"..GetTextIndex(i), i)
	UpdateProductivityModule("productivity-module"..GetTextIndex(i), i)
end