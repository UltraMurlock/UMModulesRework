function UpdateSpeedModule(name, tier)
	data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1)) }

	if(SmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.consumption = nil
	end

	if(SmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = { bonus = Round(SmPollutionStart * SmPollutionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateEffectivityModule(name, tier)
	data.raw["module"][name].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (tier - 1)) }

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateProductivityModule(name, tier)
	data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1)) }

	if(PmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.consumption = nil
	end

	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = { bonus = -Round(PmSpeedStart * PmSpeedMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.speed = nil
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end
