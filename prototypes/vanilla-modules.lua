for i = 1,3 do
	UpdateSpeedModule("speed-module"..GetTextIndex(i), i)
	UpdateEffectivityModule("effectivity-module"..GetTextIndex(i), i)
	UpdateProductivityModule("productivity-module"..GetTextIndex(i), i)
end