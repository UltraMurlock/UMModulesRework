function UpdateSpeedEffectivityModule(name, tier)
	data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1)) }
	data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) - Round(EmEffectivityStart * EmEffectivityMult ^ (tier - 1)) }

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateSpeedProductivityModule(name, tier)
    data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1)) }
		
	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1)) - Round(PmSpeedStart * PmSpeedMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1)) }
	end

	if(SmConsumptionPenalty) then
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) + Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1)) }
		else
			data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) }
		end
	else
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1)) }
		else
			data.raw["module"][name].effect.consumption = nil
		end
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateProductivityEffectivityModule(name, tier)
    data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1)) }

    if(PmSpeedPenalty) then
        data.raw["module"][name].effect.speed = { bonus = -Round(PmSpeedStart * PmSpeedMult ^ (tier - 1)) }
    else
        data.raw["module"][name].effect.speed = nil
    end

    if(PmConsumptionPenalty) then
        data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1)) - Round(EmEffectivityStart * EmEffectivityMult ^ (tier - 1)) }
    else
        data.raw["module"][name].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (tier - 1)) }
    end
    
    if(PmPollutionPenalty) then
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1)) - Round(EmPolutionStart * EmPolutionMult ^ (tier - 1)) }
        else
            data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1)) }
        end
    else
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1)) }
        else
            data.raw["module"][name].effect.pollution = nil
        end
    end
end
