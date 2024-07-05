for i = 4,6 do
	UpdateSpeedModule("speed-module"..GetTextIndex(i), i)
	UpdateEffectivityModule("effectivity-module"..GetTextIndex(i), i)
	UpdateProductivityModule("productivity-module"..GetTextIndex(i), i)
end



if(settings.startup["UMModulesRework-MergedModules"].value) then
	for i = 1,6 do
		UpdateSpeedEffectivityModule("speed-effectivity-module"..GetTextIndex(i), i)
		UpdateSpeedProductivityModule("speed-productivity-module"..GetTextIndex(i), i)
		UpdateProductivityEffectivityModule("productivity-effectivity-module"..GetTextIndex(i), i)
	end
else
	for i = 1,6 do
		--Technologies
		data.raw["technology"]["speed-effectivity-module"..GetTextIndex(i)] = nil
		data.raw["technology"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["technology"]["productivity-effectivity-module"..GetTextIndex(i)] = nil

		--Recipes
		data.raw["recipe"]["speed-effectivity-module"..GetTextIndex(i)] = nil
		data.raw["recipe"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["recipe"]["productivity-effectivity-module"..GetTextIndex(i)] = nil

		--Modules
		data.raw["module"]["speed-effectivity-module"..GetTextIndex(i)] = nil
		data.raw["module"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)] = nil
	end
	
	--Main technology
	data.raw["technology"]["merged-modules"] = nil
	
	--Module category
	data.raw["module-category"]["speed-effectivity"] = nil
	data.raw["module-category"]["speed-productivity"] = nil
	data.raw["module-category"]["productivity-effectivity"] = nil
end
