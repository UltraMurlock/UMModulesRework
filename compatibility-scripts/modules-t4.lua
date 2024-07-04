--Speed Module 4
data.raw["module"]["speed-module-4"].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ (i - 1), roundTo) }
if(SmConsumptionPenalty) then
	data.raw["module"]["speed-module-4"].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ (i - 1), roundTo) }
else
	data.raw["module"]["speed-module-4"].effect.consumption = nil
end

--Effectivuty Module 4
data.raw["module"]["effectivity-module-4"].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ (i - 1), roundTo) }
if(EmPollutionBonus) then
	data.raw["module"]["effectivity-module-4"].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ (i - 1), roundTo) }
else
	data.raw["module"]["effectivity-module-4"].effect.pollution = nil
end

--Productivity Module 4
data.raw["module"]["productivity-module-4"].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ (i - 1), roundTo) }
if(PmConsumptionPenalty) then
	data.raw["module"]["productivity-module-4"].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ (i - 1), roundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.consumption = nil
end
if(PmSpeedPenalty) then
	data.raw["module"]["productivity-module-4"].effect.consumption = { bonus = Round(PmSpeedStart * PmSpeedMult ^ (i - 1), roundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.consumption = nil
end
if(PmPollutonPenalty) then
	data.raw["module"]["productivity-module-4"].effect.consumption = { bonus = Round(PmPollutionStart * PmPollutionMult ^ (i - 1), roundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.consumption = nil
end
