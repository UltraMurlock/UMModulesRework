function UpdateSpeedModule(name, tier)
	data.raw["module"][name].effect.speed = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1))

	if(SmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.consumption = 0
	end

	if(SmQualityPenalty) then
		data.raw["module"][name].effect.quality = -Round(SmQualityStart * SmQualityMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.quality = 0
	end

	if(SmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = Round(SmPollutionStart * SmPollutionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.pollution = 0
	end
end


function UpdateEfficiencyModule(name, tier)
	data.raw["module"][name].effect.consumption = -Round(EmEfficiencyStart * EmEfficiencyMult ^ (tier - 1))

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.pollution = 0
	end
end


function UpdateProductivityModule(name, tier)
	data.raw["module"][name].effect.productivity = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1))

	if(PmConsumptionPenalty) then
		data.raw["module"][name].effect.consumption = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.consumption = 0
	end

	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = -Round(PmSpeedStart * PmSpeedMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.speed = 0
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.pollution = 0
	end
end
