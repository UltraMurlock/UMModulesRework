SmSpeedStart = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
SmSpeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value
SmConsumptionPenalty = settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value
SmConsumptionStart = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
SmConsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value
if mods["space-exploration"] then
    SmPollutionPenalty = settings.startup["UMModulesRework-SpeedModule-PollutionPenalty"].value
    SmPollutionStart = settings.startup["UMModulesRework-SpeedModule-StartPollutionPenalty"].value
    SmPollutionMult = settings.startup["UMModulesRework-SpeedModule-PollutionPenaltyMultiplierPerLevel"].value
end

EmEfficiencyStart = settings.startup["UMModulesRework-EfficiencyModule-StartConsumptionBonus"].value
EmEfficiencyMult = settings.startup["UMModulesRework-EfficiencyModule-ConsumptionBonusMultiplierPerLevel"].value
EmPollutionBonus = settings.startup["UMModulesRework-EfficiencyModule-PollutionBonus"].value
EmPolutionStart = settings.startup["UMModulesRework-EfficiencyModule-StartPollutionBonus"].value
EmPolutionMult = settings.startup["UMModulesRework-EfficiencyModule-PollutionBonusMultiplierPerLevel"].value

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

if mods["space-exploration"] then
    require("compatibility-scripts.space-exploration")
end