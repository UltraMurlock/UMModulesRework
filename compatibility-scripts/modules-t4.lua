--Speed Module 4
data.raw["module"]["speed-module-4"].effect.speed = { bonus = Round(SmSpeedStart * SmSpeedMult ^ 3, RoundTo) }
if(SmConsumptionPenalty) then
	data.raw["module"]["speed-module-4"].effect.consumption = { bonus = Round(SmConsumptionStart * SmConsumptionMult ^ 3, RoundTo) }
else
	data.raw["module"]["speed-module-4"].effect.consumption = nil
end

--Effectivuty Module 4
data.raw["module"]["effectivity-module-4"].effect.consumption = { bonus = -Round(EmEffectivityStart * EmEffectivityMult ^ 3, RoundTo) }
if(EmPollutionBonus) then
	data.raw["module"]["effectivity-module-4"].effect.pollution = { bonus = -Round(EmPolutionStart * EmPolutionMult ^ 3, RoundTo) }
else
	data.raw["module"]["effectivity-module-4"].effect.pollution = nil
end

--Productivity Module 4
data.raw["module"]["productivity-module-4"].effect.productivity = { bonus = Round(PmProductivityStart * PmProductivityMult ^ 3, RoundTo) }
if(PmConsumptionPenalty) then
	data.raw["module"]["productivity-module-4"].effect.consumption = { bonus = Round(PmConsumptionStart * PmConsumptionMult ^ 3, RoundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.consumption = nil
end
if(PmSpeedPenalty) then
	data.raw["module"]["productivity-module-4"].effect.speed = { bonus = Round(PmSpeedStart * PmSpeedMult ^ 3, RoundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.speed = nil
end
if(PmPollutonPenalty) then
	data.raw["module"]["productivity-module-4"].effect.pollution = { bonus = Round(PmPollutionStart * PmPollutionMult ^ 3, RoundTo) }
else
	data.raw["module"]["productivity-module-4"].effect.pollution = nil
end
