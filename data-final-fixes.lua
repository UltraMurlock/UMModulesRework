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
PmPollutionPenalty = settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value
PmPollutionStart = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
PmPollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value


require("scripts.util")
require("scripts.base-modules")
require("prototypes.vanilla-modules")

if mods["RFT-modules"] then
    require("scripts.merged-modules")
    require("compatibility-scripts.RFT-modules")
end

if mods["modules-t4"] then
    require("compatibility-scripts.modules-t4")
end