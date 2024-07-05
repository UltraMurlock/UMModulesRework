function UpdateSpeedModule(name, level)
	data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (level - 1)) }

	if(SmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.consumption = nil
	end
end


function UpdateEffectivityModule(name, level)
	data.raw["module"][name].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (level - 1)) }

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateProductivityModule(name, level)
	data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (level - 1)) }

	if(PmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.consumption = nil
	end

	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = { bonus = -Round(PmSpeedStart * PmSpeedMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.speed = nil
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end
