function UpdateSpeedEffectivityModule(name, level)
	data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (level - 1)) }
	data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (level - 1)) - Round(EmEffectivityStart * EmEffectivityMult ^ (level - 1)) }

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateSpeedProductivityModule(name, level)
    data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (level - 1)) }
		
	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (level - 1)) - Round(PmSpeedStart * PmSpeedMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (level - 1)) }
	end

	if(SmConsumptionPenalty) then
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (level - 1)) + Round(PmConsumptionStart * PmConsumptionMult ^ (level - 1)) }
		else
			data.raw["module"][name].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (level - 1)) }
		end
	else
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (level - 1)) }
		else
			data.raw["module"][name].effect.consumption = nil
		end
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (level - 1)) }
	else
		data.raw["module"][name].effect.pollution = nil
	end
end


function UpdateProductivityEffectivityModule(name, level)
    data.raw["module"][name].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (level - 1)) }

    if(PmSpeedPenalty) then
        data.raw["module"][name].effect.speed = { bonus = -Round(PmSpeedStart * PmSpeedMult ^ (level - 1)) }
    else
        data.raw["module"][name].effect.speed = nil
    end

    if(PmConsumptionPenalty) then
        data.raw["module"][name].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (level - 1)) - Round(EmEffectivityStart * EmEffectivityMult ^ (level - 1)) }
    else
        data.raw["module"][name].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (level - 1)) }
    end
    
    if(PmPollutionPenalty) then
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (level - 1)) - Round(EmPolutionStart * EmPolutionMult ^ (level - 1)) }
        else
            data.raw["module"][name].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (level - 1)) }
        end
    else
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (level - 1)) }
        else
            data.raw["module"][name].effect.pollution = nil
        end
    end
end
