function UpdateSpeedEfficiencyModule(name, tier)
	data.raw["module"][name].effect.speed = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1))
	data.raw["module"][name].effect.consumption = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) - Round(EmEfficiencyStart * EmEfficiencyMult ^ (tier - 1))

	if(EmPollutionBonus) then
		data.raw["module"][name].effect.pollution = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.pollution = 0
	end
end


function UpdateSpeedProductivityModule(name, tier)
    data.raw["module"][name].effect.productivity = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1))
		
	if(PmSpeedPenalty) then
		data.raw["module"][name].effect.speed = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1)) - Round(PmSpeedStart * PmSpeedMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.speed = Round(SmSpeedStart * SmSpeedMult ^ (tier - 1))
	end

	if(SmConsumptionPenalty) then
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1)) + Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1))
		else
			data.raw["module"][name].effect.consumption = Round(SmConsumptionStart * SmConsumptionMult ^ (tier - 1))
		end
	else
		if(PmConsumptionPenalty) then
			data.raw["module"][name].effect.consumption = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1))
		else
			data.raw["module"][name].effect.consumption = 0
		end
	end

	if(PmPollutionPenalty) then
		data.raw["module"][name].effect.pollution = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.pollution = 0
	end
end


function UpdateProductivityEfficiencyModule(name, tier)
    data.raw["module"][name].effect.productivity = Round(PmProductivityStart * PmProductivityMult ^ (tier - 1))

    if(PmSpeedPenalty) then
        data.raw["module"][name].effect.speed = -Round(PmSpeedStart * PmSpeedMult ^ (tier - 1))
    else
        data.raw["module"][name].effect.speed = 0
    end

    if(PmConsumptionPenalty) then
        data.raw["module"][name].effect.consumption = Round(PmConsumptionStart * PmConsumptionMult ^ (tier - 1)) - Round(EmEfficiencyStart * EmEfficiencyMult ^ (tier - 1))
    else
        data.raw["module"][name].effect.consumption = -Round(EmEfficiencyStart * EmEfficiencyMult ^ (tier - 1))
    end
    
    if(PmPollutionPenalty) then
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1)) - Round(EmPolutionStart * EmPolutionMult ^ (tier - 1))
        else
            data.raw["module"][name].effect.pollution = Round(PmPollutionStart * PmPollutionMult ^ (tier - 1))
        end
    else
        if(EmPollutionBonus) then
            data.raw["module"][name].effect.pollution = -Round(EmPolutionStart * EmPolutionMult ^ (tier - 1))
        else
            data.raw["module"][name].effect.pollution = 0
        end
    end
end
