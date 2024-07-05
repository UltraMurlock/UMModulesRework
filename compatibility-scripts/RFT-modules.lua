--Speed Module 4-6
for i = 4,6 do
	data.raw["module"]["speed-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), RoundTo) }

	if(SmConsumptionPenalty) then
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = nil
	end
end


--Effectivity Module 1-3
for i = 4,6 do
	data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), RoundTo) }

	if(EmPollutionBonus) then
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = nil
	end
end


--Productivity Module 1-3
for i = 4,6 do
	data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (i - 1), RoundTo) }

	if(PmConsumptionPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = nil
	end

	if(PmSpeedPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.speed = { bonus = Round(PmSpeedStart * PmSpeedMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.speed = nil
	end

	if(PmPollutonPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.pollution = nil
	end
end



if(settings.startup["UMModulesRework-MergedModules"].value) then
	--Speed-effectivity Module 1-6
	for i = 1,6 do
		data.raw["module"]["speed-effectivity-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), RoundTo) }
		data.raw["module"]["speed-effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), RoundTo) - Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), RoundTo) }

		if(EmPollutionBonus) then
			data.raw["module"]["speed-effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), RoundTo) }
		else
			data.raw["module"]["speed-effectivity-module"..GetTextIndex(i)].effect.pollution = nil
		end
	end


	--Speed-productivity Module 1-6
	for i = 1,6 do
		data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (i - 1), RoundTo) }
		
		if(PmSpeedPenalty) then
			data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), RoundTo) - Round(PmSpeedStart * PmSpeedMult ^ (i - 1), RoundTo) }
		else
			data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), RoundTo) }
		end

		if(SmConsumptionPenalty) then
			if(PmConsumptionPenalty) then
				data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), RoundTo) + Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), RoundTo) }
			else
				data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), RoundTo) }
			end
		else
			if(PmConsumptionPenalty) then
				data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), RoundTo) }
			else
				data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.consumption = nil
			end
		end

		if(PmPollutionPenalty) then
			data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), RoundTo) }
		else
			data.raw["module"]["speed-productivity-module"..GetTextIndex(i)].effect.pollution = nil
		end
	end


	--Productivity-effectivity Module 1-6
	for i = 1,6 do
		data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (i - 1), RoundTo) }

		if(PmSpeedPenalty) then
			data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.speed = { bonus = -Round(PmSpeedStart * PmSpeedMult ^ (i - 1), RoundTo) }
		else
			data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.speed = nil
		end

		if(PmConsumptionPenalty) then
			data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), RoundTo) - Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), RoundTo) }
		else
			data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), RoundTo) }
		end

		if(PmPollutionPenalty) then
			if(EmPollutionBonus) then
				data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), RoundTo) - Round(EmPolutionStart * EmPolutionMult ^ (i - 1), RoundTo) }
			else
				data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), RoundTo) }
			end
		else
			if(EmPollutionBonus) then
				data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), RoundTo) }
			else
				data.raw["module"]["productivity-effectivity-module"..GetTextIndex(i)].effect.pollution = nil
			end
		end
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
