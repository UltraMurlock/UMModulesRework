RoundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
function Round(value, alpha)
	return (math.ceil(value / alpha) * alpha)
end

function GetTextIndex(level)
	if level == 1 then
		return ""
	else
		return "-"..level
	end
end

SmSpeedStart = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
SmSpeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value

SmConsumptionPenalty = settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value
SmConsumptionStart = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
SmConsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value

EmEffectivityStart = settings.startup["UMModulesRework-EffectivityModule-StartConsumptionBonus"].value
EmEffectivityMult = settings.startup["UMModulesRework-EffectivityModule-ConsumptionBonusMultiplierPerLevel"].value
EmPollutionBonus = settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value
EmPolutionStart = settings.startup["UMModulesRework-EffectivityModule-StartPollutionBonus"].value
EmPolutionMult = settings.startup["UMModulesRework-EffectivityModule-PollutionBonusMultiplierPerLevel"].value

PmProductivityStart = settings.startup["UMModulesRework-ProductivityModule-StartProductivity"].value
PmProductivityMult = settings.startup["UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel"].value
PmConsumptionPenalty = settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value
PmConsumptionStart = settings.startup["UMModulesRework-ProductivityModule-StartConsumption"].value
PmConsumptionMult = settings.startup["UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel"].value
PmSpeedPenalty = settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value
PmSpeedStart = settings.startup["UMModulesRework-ProductivityModule-StartSpeedPenalty"].value
PmSpeedMult = settings.startup["UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel"].value
PmPollutonPenalty = settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value
PmPollutionStart = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
PmPollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value

--Speed Module 1-3
for i = 1,3 do
	data.raw["module"]["speed-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), RoundTo) }

	if(SmConsumptionPenalty) then
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = nil
	end
end


--Effectivity Module 1-3
for i = 1,3 do
	data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), RoundTo) }

	if(EmPollutionBonus) then
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), RoundTo) }
	else
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = nil
	end
end


--Productivity Module 1-3
for i = 1,3 do
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
