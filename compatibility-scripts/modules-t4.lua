local roundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
local function Round(value, alpha)
	return (math.ceil(value / alpha) * alpha)
end



--Speed Module 4-6
local SMspeed = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
local SMspeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value

--Speed
data.raw["module"]["speed-module-4"].effect.speed = {bonus = Round(SMspeed * SMspeedMult^3, roundTo)}

--Consumption
if settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value then
	local SMconsumption = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
	local SMconsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value
	data.raw["module"]["speed-module-4"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult^3, roundTo)}
else
	data.raw["module"]["speed-module-4"].effect.consumption = nil
end

	--Effectivity Module 4-6
local EMeffectivity = settings.startup["UMModulesRework-EffectivityModule-StartConsumptionBonus"].value
local EMeffectivityMult = settings.startup["UMModulesRework-EffectivityModule-ConsumptionBonusMultiplierPerLevel"].value

--Consumption
data.raw["module"]["effectivity-module-4"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult^3, roundTo)}

--Pollution
if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
	local EMpolution = settings.startup["UMModulesRework-EffectivityModule-StartPollutionBonus"].value
	local EMpolutionMult = settings.startup["UMModulesRework-EffectivityModule-PollutionBonusMultiplierPerLevel"].value
	data.raw["module"]["effectivity-module-4"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult^3, roundTo)}
else
	data.raw["module"]["effectivity-module-4"].effect.pollution = nil
end



--Productivity Module 4-6
local PMproductivity = settings.startup["UMModulesRework-ProductivityModule-StartProductivity"].value
local PMproductivityMult = settings.startup["UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel"].value

--Productivity
data.raw["module"]["productivity-module-4"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult^3, roundTo)}

--Consumption
if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
	local PMconsumption = settings.startup["UMModulesRework-ProductivityModule-StartConsumption"].value
	local PMconsumptionMult = settings.startup["UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel"].value
	data.raw["module"]["productivity-module-4"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult^3, roundTo)}
else
	data.raw["module"]["productivity-module-4"].effect.consumption = nil
end

--Speed
if settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value then
	local PMspeed = settings.startup["UMModulesRework-ProductivityModule-StartSpeedPenalty"].value
	local PMspeedMult = settings.startup["UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel"].value
	data.raw["module"]["productivity-module-4"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult^3, roundTo)}
else
	data.raw["module"]["productivity-module-4"].effect.speed = nil
end

--Pollution
if settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value then
	local PMpollution = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
	local PMpollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value
	data.raw["module"]["productivity-module-4"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult^3, roundTo)}
else
	data.raw["module"]["productivity-module-4"].effect.pollution = nil
end