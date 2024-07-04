local roundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
local function Round(value, alpha)
	return (math.ceil(value / alpha) * alpha)
end

--Vanilla modules
--Speed Module 1-3
local SMspeed = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
local SMspeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value

--Speed
data.raw["module"]["speed-module"].effect.speed = {bonus = Round(SMspeed, roundTo)}
data.raw["module"]["speed-module-2"].effect.speed = {bonus = Round(SMspeed * SMspeedMult, roundTo)}
data.raw["module"]["speed-module-3"].effect.speed = {bonus = Round(SMspeed * SMspeedMult^2, roundTo)}

--Consumption
if settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value then
	local SMconsumption = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
	local SMconsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value
	data.raw["module"]["speed-module"].effect.consumption = {bonus = Round(SMconsumption, roundTo)}
	data.raw["module"]["speed-module-2"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult, roundTo)}
	data.raw["module"]["speed-module-3"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult^2, roundTo)}
else
	data.raw["module"]["speed-module"].effect.consumption = nil
	data.raw["module"]["speed-module-2"].effect.consumption = nil
	data.raw["module"]["speed-module-3"].effect.consumption = nil
end



--Effectivity Module 1-3
local EMeffectivity = settings.startup["UMModulesRework-EffectivityModule-StartConsumptionBonus"].value
local EMeffectivityMult = settings.startup["UMModulesRework-EffectivityModule-ConsumptionBonusMultiplierPerLevel"].value

--Consumption
data.raw["module"]["effectivity-module"].effect.consumption = {bonus = -Round(EMeffectivity, roundTo)}
data.raw["module"]["effectivity-module-2"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult, roundTo)}
data.raw["module"]["effectivity-module-3"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult^2, roundTo)}

--Poolution
if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
	local EMpolution = settings.startup["UMModulesRework-EffectivityModule-StartPollutionBonus"].value
	local EMpolutionMult = settings.startup["UMModulesRework-EffectivityModule-PollutionBonusMultiplierPerLevel"].value
	data.raw["module"]["effectivity-module"].effect.pollution = {bonus = -Round(EMpolution, roundTo)}
	data.raw["module"]["effectivity-module-2"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult, roundTo)}
	data.raw["module"]["effectivity-module-3"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult^2, roundTo)}
else
	data.raw["module"]["effectivity-module"].effect.pollution = nil
	data.raw["module"]["effectivity-module-2"].effect.pollution = nil
	data.raw["module"]["effectivity-module-3"].effect.pollution = nil
end



--Productivity Module 1-3
local PMproductivity = settings.startup["UMModulesRework-ProductivityModule-StartProductivity"].value
local PMproductivityMult = settings.startup["UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel"].value

--Productivity
data.raw["module"]["productivity-module"].effect.productivity = {bonus = Round(PMproductivity, roundTo)}
data.raw["module"]["productivity-module-2"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult, roundTo)}
data.raw["module"]["productivity-module-3"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult^2, roundTo)}

--Consumption
if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
	local PMconsumption = settings.startup["UMModulesRework-ProductivityModule-StartConsumption"].value
	local PMconsumptionMult = settings.startup["UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel"].value
	data.raw["module"]["productivity-module"].effect.consumption = {bonus = Round(PMconsumption, roundTo)}
	data.raw["module"]["productivity-module-2"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult, roundTo)}
	data.raw["module"]["productivity-module-3"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult^2, roundTo)}
else
	data.raw["module"]["productivity-module"].effect.consumption = nil
	data.raw["module"]["productivity-module-2"].effect.consumption = nil
	data.raw["module"]["productivity-module-3"].effect.consumption = nil
end

--Speed
if settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value then
	local PMspeed = settings.startup["UMModulesRework-ProductivityModule-StartSpeedPenalty"].value
	local PMspeedMult = settings.startup["UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel"].value
	data.raw["module"]["productivity-module"].effect.speed = {bonus = -Round(PMspeed, roundTo)}
	data.raw["module"]["productivity-module-2"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult, roundTo)}
	data.raw["module"]["productivity-module-3"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult^2, roundTo)}
else
	data.raw["module"]["productivity-module"].effect.speed = nil
	data.raw["module"]["productivity-module-2"].effect.speed = nil
	data.raw["module"]["productivity-module-3"].effect.speed = nil
end

--Poolution
if settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value then
	local PMpollution = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
	local PMpollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value
	data.raw["module"]["productivity-module"].effect.pollution = {bonus = Round(PMpollution, roundTo)}
	data.raw["module"]["productivity-module-2"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult, roundTo)}
	data.raw["module"]["productivity-module-3"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult^2, roundTo)}
else
	data.raw["module"]["productivity-module"].effect.pollution = nil
	data.raw["module"]["productivity-module-2"].effect.pollution = nil
	data.raw["module"]["productivity-module-3"].effect.pollution = nil
end


--RFT modules
if mods["RFT-modules"] then
	--Speed Module 4-6
	local SMspeed = settings.startup["UMModulesRework-SpeedModule-StartSpeed"].value
	local SMspeedMult = settings.startup["UMModulesRework-SpeedModule-SpeedMultiplierPerLevel"].value
	
	--Speed
	data.raw["module"]["speed-module-4"].effect.speed = {bonus = Round(SMspeed * SMspeedMult^3, roundTo)}
	data.raw["module"]["speed-module-5"].effect.speed = {bonus = Round(SMspeed * SMspeedMult^4, roundTo)}
	data.raw["module"]["speed-module-6"].effect.speed = {bonus = Round(SMspeed * SMspeedMult^5, roundTo)}
	
	--Consumption
	if settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value then
		local SMconsumption = settings.startup["UMModulesRework-SpeedModule-StartConsumption"].value
		local SMconsumptionMult = settings.startup["UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel"].value
		data.raw["module"]["speed-module-4"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult^3, roundTo)}
		data.raw["module"]["speed-module-5"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult^4, roundTo)}
		data.raw["module"]["speed-module-6"].effect.consumption = {bonus = Round(SMconsumption * SMconsumptionMult^5, roundTo)}
	else
		data.raw["module"]["speed-module-4"].effect.consumption = nil
		data.raw["module"]["speed-module-5"].effect.consumption = nil
		data.raw["module"]["speed-module-6"].effect.consumption = nil
	end



	--Effectivity Module 4-6
	local EMeffectivity = settings.startup["UMModulesRework-EffectivityModule-StartConsumptionBonus"].value
	local EMeffectivityMult = settings.startup["UMModulesRework-EffectivityModule-ConsumptionBonusMultiplierPerLevel"].value
	
	--Consumption
	data.raw["module"]["effectivity-module-4"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult^3, roundTo)}
	data.raw["module"]["effectivity-module-5"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult^4, roundTo)}
	data.raw["module"]["effectivity-module-6"].effect.consumption = {bonus = -Round(EMeffectivity * EMeffectivityMult^5, roundTo)}
	
	--Pollution
	if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
		local EMpolution = settings.startup["UMModulesRework-EffectivityModule-StartPollutionBonus"].value
		local EMpolutionMult = settings.startup["UMModulesRework-EffectivityModule-PollutionBonusMultiplierPerLevel"].value
		data.raw["module"]["effectivity-module-4"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult^3, roundTo)}
		data.raw["module"]["effectivity-module-5"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult^4, roundTo)}
		data.raw["module"]["effectivity-module-6"].effect.pollution = {bonus = -Round(EMpolution * EMpolutionMult^5, roundTo)}
	else
		data.raw["module"]["effectivity-module-4"].effect.pollution = nil
		data.raw["module"]["effectivity-module-5"].effect.pollution = nil
		data.raw["module"]["effectivity-module-6"].effect.pollution = nil
	end
	
	
	
	--Productivity Module 4-6
	local PMproductivity = settings.startup["UMModulesRework-ProductivityModule-StartProductivity"].value
	local PMproductivityMult = settings.startup["UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel"].value
	
	--Productivity
	data.raw["module"]["productivity-module-4"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult^3, roundTo)}
	data.raw["module"]["productivity-module-5"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult^4, roundTo)}
	data.raw["module"]["productivity-module-6"].effect.productivity = {bonus = Round(PMproductivity * PMproductivityMult^5, roundTo)}
	
	--Consumption
	if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
		local PMconsumption = settings.startup["UMModulesRework-ProductivityModule-StartConsumption"].value
		local PMconsumptionMult = settings.startup["UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel"].value
		data.raw["module"]["productivity-module-4"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult^3, roundTo)}
		data.raw["module"]["productivity-module-5"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult^4, roundTo)}
		data.raw["module"]["productivity-module-6"].effect.consumption = {bonus = Round(PMconsumption * PMconsumptionMult^5, roundTo)}
	else
		data.raw["module"]["productivity-module-4"].effect.consumption = nil
		data.raw["module"]["productivity-module-5"].effect.consumption = nil
		data.raw["module"]["productivity-module-6"].effect.consumption = nil
	end
	
	--Speed
	if settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value then
		local PMspeed = settings.startup["UMModulesRework-ProductivityModule-StartSpeedPenalty"].value
		local PMspeedMult = settings.startup["UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel"].value
		data.raw["module"]["productivity-module-4"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult^3, roundTo)}
		data.raw["module"]["productivity-module-5"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult^4, roundTo)}
		data.raw["module"]["productivity-module-6"].effect.speed = {bonus = -Round(PMspeed * PMspeedMult^5, roundTo)}
	else
		data.raw["module"]["productivity-module-4"].effect.speed = nil
		data.raw["module"]["productivity-module-5"].effect.speed = nil
		data.raw["module"]["productivity-module-6"].effect.speed = nil
	end
	
	--Pollution
	if settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value then
		local PMpollution = settings.startup["UMModulesRework-ProductivityModule-StartPollutionPenalty"].value
		local PMpollutionMult = settings.startup["UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel"].value
		data.raw["module"]["productivity-module-4"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult^3, roundTo)}
		data.raw["module"]["productivity-module-5"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult^4, roundTo)}
		data.raw["module"]["productivity-module-6"].effect.pollution = {bonus = Round(PMpollution * PMpollutionMult^5, roundTo)}
	else
		data.raw["module"]["productivity-module-4"].effect.pollution = nil
		data.raw["module"]["productivity-module-5"].effect.pollution = nil
		data.raw["module"]["productivity-module-6"].effect.pollution = nil
	end
	
	
	
	--Merged modules
	if settings.startup["UMModulesRework-MergedModules"].value then
		--Speed-effectivity module 1-6
		
		--Speed
		data.raw["module"]["speed-effectivity-module"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module"].effect.speed.bonus }
		data.raw["module"]["speed-effectivity-module-2"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module-2"].effect.speed.bonus }
		data.raw["module"]["speed-effectivity-module-3"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module-3"].effect.speed.bonus }
		data.raw["module"]["speed-effectivity-module-4"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module-4"].effect.speed.bonus }
		data.raw["module"]["speed-effectivity-module-5"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module-5"].effect.speed.bonus }
		data.raw["module"]["speed-effectivity-module-6"].effect.speed = 
			{ bonus = data.raw["module"]["speed-module-6"].effect.speed.bonus }
			
		
		--Effectivity
		if settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value then
			data.raw["module"]["speed-effectivity-module"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module"].effect.consumption.bonus + data.raw["module"]["speed-module"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-2"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-2"].effect.consumption.bonus + data.raw["module"]["speed-module-2"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-3"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-3"].effect.consumption.bonus + data.raw["module"]["speed-module-3"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-4"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-4"].effect.consumption.bonus + data.raw["module"]["speed-module-4"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-5"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-5"].effect.consumption.bonus + data.raw["module"]["speed-module-5"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-6"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-6"].effect.consumption.bonus + data.raw["module"]["speed-module-6"].effect.consumption.bonus }
			
		else
			data.raw["module"]["speed-effectivity-module"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-2"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-2"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-3"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-3"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-4"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-4"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-5"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-5"].effect.consumption.bonus }
			data.raw["module"]["speed-effectivity-module-6"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-6"].effect.consumption.bonus }
		end
		
		--Pollution
		if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
			data.raw["module"]["speed-effectivity-module"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module"].effect.pollution.bonus }
			data.raw["module"]["speed-effectivity-module-2"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module-2"].effect.pollution.bonus }
			data.raw["module"]["speed-effectivity-module-3"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module-3"].effect.pollution.bonus }
			data.raw["module"]["speed-effectivity-module-4"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module-4"].effect.pollution.bonus }
			data.raw["module"]["speed-effectivity-module-5"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module-5"].effect.pollution.bonus }
			data.raw["module"]["speed-effectivity-module-6"].effect.pollution = 
				{ bonus = data.raw["module"]["effectivity-module-6"].effect.pollution.bonus }
		else
			data.raw["module"]["speed-effectivity-module"].effect.pollution = nil
			data.raw["module"]["speed-effectivity-module-2"].effect.pollution = nil
			data.raw["module"]["speed-effectivity-module-3"].effect.pollution = nil
			data.raw["module"]["speed-effectivity-module-4"].effect.pollution = nil
			data.raw["module"]["speed-effectivity-module-5"].effect.pollution = nil
			data.raw["module"]["speed-effectivity-module-6"].effect.pollution = nil
		end
		
		
		
		--Speed-productivity module 1-6
		
		--Speed
		if settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value then
			data.raw["module"]["speed-productivity-module"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module"].effect.speed.bonus + data.raw["module"]["productivity-module"].effect.speed.bonus}	
			data.raw["module"]["speed-productivity-module-2"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-2"].effect.speed.bonus + data.raw["module"]["productivity-module-2"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-3"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-3"].effect.speed.bonus + data.raw["module"]["productivity-module-3"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-4"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-4"].effect.speed.bonus + data.raw["module"]["productivity-module-4"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-5"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-5"].effect.speed.bonus + data.raw["module"]["productivity-module-5"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-6"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-6"].effect.speed.bonus + data.raw["module"]["productivity-module-6"].effect.speed.bonus }
		else
			data.raw["module"]["speed-productivity-module"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module"].effect.speed.bonus }	
			data.raw["module"]["speed-productivity-module-2"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-2"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-3"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-3"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-4"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-4"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-5"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-5"].effect.speed.bonus }
			data.raw["module"]["speed-productivity-module-6"].effect.speed = 
				{ bonus = data.raw["module"]["speed-module-6"].effect.speed.bonus }
		end
		
		--Productivity
		data.raw["module"]["speed-productivity-module"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module"].effect.productivity.bonus }
		data.raw["module"]["speed-productivity-module-2"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-2"].effect.productivity.bonus }
		data.raw["module"]["speed-productivity-module-3"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-3"].effect.productivity.bonus }
		data.raw["module"]["speed-productivity-module-4"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-4"].effect.productivity.bonus }
		data.raw["module"]["speed-productivity-module-5"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-5"].effect.productivity.bonus }
		data.raw["module"]["speed-productivity-module-6"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-6"].effect.productivity.bonus }
			
		--Effectivity
		if settings.startup["UMModulesRework-SpeedModule-ConsumptionPenalty"].value then
			if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
				data.raw["module"]["speed-productivity-module"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module"].effect.consumption.bonus + data.raw["module"]["speed-module"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-2"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-2"].effect.consumption.bonus + data.raw["module"]["speed-module-2"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-3"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-3"].effect.consumption.bonus + data.raw["module"]["speed-module-3"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-4"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-4"].effect.consumption.bonus + data.raw["module"]["speed-module-4"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-5"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-5"].effect.consumption.bonus + data.raw["module"]["speed-module-5"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-6"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-6"].effect.consumption.bonus + data.raw["module"]["speed-module-6"].effect.consumption.bonus }
			else
				data.raw["module"]["speed-productivity-module"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-2"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module-2"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-3"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module-3"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-4"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module-4"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-5"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module-5"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-6"].effect.consumption = 
					{ bonus = data.raw["module"]["speed-module-6"].effect.consumption.bonus }
			end
		else
			if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
				data.raw["module"]["speed-productivity-module"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-2"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-2"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-3"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-3"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-4"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-4"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-5"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-5"].effect.consumption.bonus }
				data.raw["module"]["speed-productivity-module-6"].effect.consumption = 
					{ bonus = data.raw["module"]["productivity-module-6"].effect.consumption.bonus }
			else
				data.raw["module"]["speed-productivity-module"].effect.consumption = nil
				data.raw["module"]["speed-productivity-module-2"].effect.consumption = nil
				data.raw["module"]["speed-productivity-module-3"].effect.consumption = nil
				data.raw["module"]["speed-productivity-module-4"].effect.consumption = nil
				data.raw["module"]["speed-productivity-module-5"].effect.consumption = nil
				data.raw["module"]["speed-productivity-module-6"].effect.consumption = nil
			end
		end
		
		--Pollution
		if settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value then
			data.raw["module"]["speed-productivity-module"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module"].effect.pollution.bonus }	
			data.raw["module"]["speed-productivity-module-2"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module-2"].effect.pollution.bonus }
			data.raw["module"]["speed-productivity-module-3"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module-3"].effect.pollution.bonus }
			data.raw["module"]["speed-productivity-module-4"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module-4"].effect.pollution.bonus }
			data.raw["module"]["speed-productivity-module-5"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module-5"].effect.pollution.bonus }
			data.raw["module"]["speed-productivity-module-6"].effect.pollution = 
				{ bonus = data.raw["module"]["productivity-module-6"].effect.pollution.bonus }
		else
			data.raw["module"]["speed-productivity-module"].effect.pollution = nil
			data.raw["module"]["speed-productivity-module-2"].effect.pollution = nil
			data.raw["module"]["speed-productivity-module-3"].effect.pollution = nil
			data.raw["module"]["speed-productivity-module-4"].effect.pollution = nil
			data.raw["module"]["speed-productivity-module-5"].effect.pollution = nil
			data.raw["module"]["speed-productivity-module-6"].effect.pollution = nil
		end
		
		
		
		--Productivity-effectivity module 1-6
		--Speed
		if settings.startup["UMModulesRework-ProductivityModule-SpeedPenalty"].value then
			data.raw["module"]["productivity-effectivity-module"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module"].effect.speed.bonus }
			data.raw["module"]["productivity-effectivity-module-2"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module-2"].effect.speed.bonus }
			data.raw["module"]["productivity-effectivity-module-3"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module-3"].effect.speed.bonus }
			data.raw["module"]["productivity-effectivity-module-4"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module-4"].effect.speed.bonus }
			data.raw["module"]["productivity-effectivity-module-5"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module-5"].effect.speed.bonus }
			data.raw["module"]["productivity-effectivity-module-6"].effect.speed = 
				{ bonus = data.raw["module"]["productivity-module-6"].effect.speed.bonus }
		else
			data.raw["module"]["productivity-effectivity-module"].effect.speed = nil
			data.raw["module"]["productivity-effectivity-module-2"].effect.speed = nil
			data.raw["module"]["productivity-effectivity-module-3"].effect.speed = nil
			data.raw["module"]["productivity-effectivity-module-4"].effect.speed = nil
			data.raw["module"]["productivity-effectivity-module-5"].effect.speed = nil
			data.raw["module"]["productivity-effectivity-module-6"].effect.speed = nil
		end
		
		--Productivity
		data.raw["module"]["productivity-effectivity-module"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module"].effect.productivity.bonus }
		data.raw["module"]["productivity-effectivity-module-2"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-2"].effect.productivity.bonus }
		data.raw["module"]["productivity-effectivity-module-3"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-3"].effect.productivity.bonus }
		data.raw["module"]["productivity-effectivity-module-4"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-4"].effect.productivity.bonus }
		data.raw["module"]["productivity-effectivity-module-5"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-5"].effect.productivity.bonus }
		data.raw["module"]["productivity-effectivity-module-6"].effect.productivity = 
			{ bonus = data.raw["module"]["productivity-module-6"].effect.productivity.bonus }
			
		--Consumption
		if settings.startup["UMModulesRework-ProductivityModule-ConsumptionPenalty"].value then
			data.raw["module"]["productivity-effectivity-module"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module"].effect.consumption.bonus + data.raw["module"]["productivity-module"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-2"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-2"].effect.consumption.bonus + data.raw["module"]["productivity-module-2"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-3"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-3"].effect.consumption.bonus + data.raw["module"]["productivity-module-3"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-4"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-4"].effect.consumption.bonus + data.raw["module"]["productivity-module-4"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-5"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-5"].effect.consumption.bonus + data.raw["module"]["productivity-module-5"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-6"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-6"].effect.consumption.bonus + data.raw["module"]["productivity-module-6"].effect.consumption.bonus }
		else
			data.raw["module"]["productivity-effectivity-module"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-2"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-2"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-3"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-3"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-4"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-4"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-5"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-5"].effect.consumption.bonus }
			data.raw["module"]["productivity-effectivity-module-6"].effect.consumption = 
				{ bonus = data.raw["module"]["effectivity-module-6"].effect.consumption.bonus }
		end
		
		--Pollution
		if settings.startup["UMModulesRework-ProductivityModule-PollutionPenalty"].value then
			if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
				data.raw["module"]["productivity-effectivity-module"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module"].effect.pollution.bonus + data.raw["module"]["productivity-module"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-2"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-2"].effect.pollution.bonus + data.raw["module"]["productivity-module-2"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-3"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-3"].effect.pollution.bonus + data.raw["module"]["productivity-module-3"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-4"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-4"].effect.pollution.bonus + data.raw["module"]["productivity-module-4"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-5"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-5"].effect.pollution.bonus + data.raw["module"]["productivity-module-5"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-6"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-6"].effect.pollution.bonus + data.raw["module"]["productivity-module-6"].effect.pollution.bonus }
			else
				data.raw["module"]["productivity-effectivity-module"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-2"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module-2"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-3"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module-3"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-4"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module-4"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-5"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module-5"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-5"].effect.pollution = 
					{ bonus = data.raw["module"]["productivity-module-5"].effect.pollution.bonus }
			end
		else
			if settings.startup["UMModulesRework-EffectivityModule-PollutionBonus"].value then
				data.raw["module"]["productivity-effectivity-module"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-2"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-2"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-3"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-3"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-4"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-4"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-5"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-5"].effect.pollution.bonus }
				data.raw["module"]["productivity-effectivity-module-6"].effect.pollution = 
					{ bonus = data.raw["module"]["effectivity-module-6"].effect.pollution.bonus }
			else
				data.raw["module"]["productivity-effectivity-module"].effect.pollution = nil
				data.raw["module"]["productivity-effectivity-module-2"].effect.pollution = nil
				data.raw["module"]["productivity-effectivity-module-3"].effect.pollution = nil
				data.raw["module"]["productivity-effectivity-module-4"].effect.pollution = nil
				data.raw["module"]["productivity-effectivity-module-5"].effect.pollution = nil
				data.raw["module"]["productivity-effectivity-module-6"].effect.pollution = nil
			end
		end
	else
		--Technologies
		data.raw["technology"]["speed-effectivity-module"] = nil
		data.raw["technology"]["speed-effectivity-module-2"] = nil
		data.raw["technology"]["speed-effectivity-module-3"] = nil
		data.raw["technology"]["speed-effectivity-module-4"] = nil
		data.raw["technology"]["speed-effectivity-module-5"] = nil
		data.raw["technology"]["speed-effectivity-module-6"] = nil
		
		data.raw["technology"]["speed-productivity-module"] = nil
		data.raw["technology"]["speed-productivity-module-2"] = nil
		data.raw["technology"]["speed-productivity-module-3"] = nil
		data.raw["technology"]["speed-productivity-module-4"] = nil
		data.raw["technology"]["speed-productivity-module-5"] = nil
		data.raw["technology"]["speed-productivity-module-6"] = nil
		
		data.raw["technology"]["productivity-effectivity-module"] = nil
		data.raw["technology"]["productivity-effectivity-module-2"] = nil
		data.raw["technology"]["productivity-effectivity-module-3"] = nil
		data.raw["technology"]["productivity-effectivity-module-4"] = nil
		data.raw["technology"]["productivity-effectivity-module-5"] = nil
		data.raw["technology"]["productivity-effectivity-module-6"] = nil
		
		data.raw["technology"]["merged-modules"] = nil
		
		
		--Recipes
		data.raw["recipe"]["speed-effectivity-module"] = nil
		data.raw["recipe"]["speed-effectivity-module-2"] = nil
		data.raw["recipe"]["speed-effectivity-module-3"] = nil
		data.raw["recipe"]["speed-effectivity-module-4"] = nil
		data.raw["recipe"]["speed-effectivity-module-5"] = nil
		data.raw["recipe"]["speed-effectivity-module-6"] = nil
		
		data.raw["recipe"]["speed-productivity-module"] = nil
		data.raw["recipe"]["speed-productivity-module-2"] = nil
		data.raw["recipe"]["speed-productivity-module-3"] = nil
		data.raw["recipe"]["speed-productivity-module-4"] = nil
		data.raw["recipe"]["speed-productivity-module-5"] = nil
		data.raw["recipe"]["speed-productivity-module-6"] = nil
		
		data.raw["recipe"]["productivity-effectivity-module"] = nil
		data.raw["recipe"]["productivity-effectivity-module-2"] = nil
		data.raw["recipe"]["productivity-effectivity-module-3"] = nil
		data.raw["recipe"]["productivity-effectivity-module-4"] = nil
		data.raw["recipe"]["productivity-effectivity-module-5"] = nil
		data.raw["recipe"]["productivity-effectivity-module-6"] = nil
		
		
		--Modules
		data.raw["module"]["speed-effectivity-module"] = nil
		data.raw["module"]["speed-effectivity-module-2"] = nil
		data.raw["module"]["speed-effectivity-module-3"] = nil
		data.raw["module"]["speed-effectivity-module-4"] = nil
		data.raw["module"]["speed-effectivity-module-5"] = nil
		data.raw["module"]["speed-effectivity-module-6"] = nil
		
		data.raw["module"]["speed-productivity-module"] = nil
		data.raw["module"]["speed-productivity-module-2"] = nil
		data.raw["module"]["speed-productivity-module-3"] = nil
		data.raw["module"]["speed-productivity-module-4"] = nil
		data.raw["module"]["speed-productivity-module-5"] = nil
		data.raw["module"]["speed-productivity-module-6"] = nil
		
		data.raw["module"]["productivity-effectivity-module"] = nil
		data.raw["module"]["productivity-effectivity-module-2"] = nil
		data.raw["module"]["productivity-effectivity-module-3"] = nil
		data.raw["module"]["productivity-effectivity-module-4"] = nil
		data.raw["module"]["productivity-effectivity-module-5"] = nil
		data.raw["module"]["productivity-effectivity-module-6"] = nil
		
		
		--Module category
		data.raw["module-category"]["speed-effectivity"] = nil
		data.raw["module-category"]["speed-productivity"] = nil
		data.raw["module-category"]["productivity-effectivity"] = nil
	end
end