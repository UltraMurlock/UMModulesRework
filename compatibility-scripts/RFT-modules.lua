for i = 4,6 do
	UpdateSpeedModule("speed-module"..GetTextIndex(i), i)
	UpdateEfficiencyModule("efficiency-module"..GetTextIndex(i), i)
	UpdateProductivityModule("productivity-module"..GetTextIndex(i), i)
end



if(settings.startup["UMModulesRework-MergedModules"].value) then
	for i = 1,6 do
		UpdateSpeedEfficiencyModule("speed-efficiency-module"..GetTextIndex(i), i)
		UpdateSpeedProductivityModule("speed-productivity-module"..GetTextIndex(i), i)
		UpdateProductivityEfficiencyModule("productivity-efficiency-module"..GetTextIndex(i), i)
	end
else
	for i = 1,6 do
		--Technologies
		data.raw["technology"]["speed-efficiency-module"..GetTextIndex(i)] = nil
		data.raw["technology"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["technology"]["productivity-efficiency-module"..GetTextIndex(i)] = nil

		--Recipes
		data.raw["recipe"]["speed-efficiency-module"..GetTextIndex(i)] = nil
		data.raw["recipe"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["recipe"]["productivity-efficiency-module"..GetTextIndex(i)] = nil

		--Modules
		data.raw["module"]["speed-efficiency-module"..GetTextIndex(i)] = nil
		data.raw["module"]["speed-productivity-module"..GetTextIndex(i)] = nil
		data.raw["module"]["productivity-efficiency-module"..GetTextIndex(i)] = nil
	end
	
	--Main technology
	data.raw["technology"]["merged-modules"] = nil
	
	--Module category
	data.raw["module-category"]["speed-efficiency"] = nil
	data.raw["module-category"]["speed-productivity"] = nil
	data.raw["module-category"]["productivity-efficiency"] = nil
end
