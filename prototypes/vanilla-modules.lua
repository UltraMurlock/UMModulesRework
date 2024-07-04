local roundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
local function Round(value, alpha)
	return (math.ceil(value / alpha) * alpha)
end

local function GetTextIndex(level)
	if level == 0 then
		return ""
	else
		return "-"..level
	end
end

local SmSpeedStart = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
local SmSpeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value
local SmConsumptionPenalty = settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value
local SmConsumptionStart = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
local SmConsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value

local EmEffectivityStart = settings.startup["UMModulesRework-EffectivityModule-StartConsumptionBonus"].value
local EmEffectivityMult = settings.startup["UMModulesRework-EffectivityModule-ConsumptionBonusMultiplierPerLevel"].value
local EmPollutionBonus = settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value
local EmPolutionStart = settings.startup["UMModulesRework-EffectivityModule-StartPollutionBonus"].value
local EmPolutionMult = settings.startup["UMModulesRework-EffectivityModule-PollutionBonusMultiplierPerLevel"].value

local PmProductivityStart = settings.startup["UMModulesRework-ProductivityModule-StartProductivity"].value
local PmProductivityMult = settings.startup["UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel"].value
local PmConsumptionPenalty = settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value
local PmConsumptionStart = settings.startup["UMModulesRework-ProductivityModule-StartConsumption"].value
local PmConsumptionMult = settings.startup["UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel"].value
local PmSpeedPenalty = settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value
local PmSpeedStart = settings.startup["UMModulesRework-ProductivityModule-StartSpeedPenalty"].value
local PmSpeedMult = settings.startup["UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel"].value
local PmPollutonPenalty = settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value
local PmPollutionStart = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
local PmPollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value

--Speed Module 1-3
for i = 1,3 do
	data.raw["module"]["speed-module"..GetTextIndex(i)].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), roundTo) }

	if(SmConsumptionPenalty) then
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), roundTo) }
	else
		data.raw["module"]["speed-module"..GetTextIndex(i)].effect.consumption = nil
	end
end


--Effectivity Module 1-3
for i = 1,3 do
	data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), roundTo) }

	if(EmPollutionBonus) then
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), roundTo) }
	else
		data.raw["module"]["effectivity-module"..GetTextIndex(i)].effect.pollution = nil
	end
end


--Productivity Module 1-3
for i = 1,3 do
	data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (i - 1), roundTo) }

	if(PmConsumptionPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), roundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = nil
	end

	if(PmSpeedPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmSpeedStart * PmSpeedMult ^ (i - 1), roundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = nil
	end

	if(PmPollutonPenalty) then
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), roundTo) }
	else
		data.raw["module"]["productivity-module"..GetTextIndex(i)].effect.consumption = nil
	end
end
