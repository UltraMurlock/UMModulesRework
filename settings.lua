data:extend({
	--SpeedModule
    { --Speed
        type = "double-setting",
        name = "UMModulesRework-SpeedModule-StartSpeed",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10, 
        default_value = 0.2,
		order = "00"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-SpeedModule-SpeedMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "01"
    },
	
	
	{ --Consumption
        type = "bool-setting",
        name = "UMModulesRework-SpeedModule-ConsumptionPenalty",
        setting_type = "startup",
        default_value = true,
		order = "02"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-SpeedModule-StartConsumption",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.25,
		order = "03"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-SpeedModule-ConsumptionMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "04"
    }
})

if(mods["quality"]) then
	data:extend({
		{--QualityPenalty
			type = "bool-setting",
			name = "UMModulesRework-SpeedModule-QualityPenalty",
			setting_type = "startup",
			default_value = true,
			order = "05"
		},
		{
			type = "double-setting",
			name = "UMModulesRework-SpeedModule-StartQualityPenalty",
			setting_type = "startup",
			minimum_value = 0,
			maximum_value = 10,
			default_value = 0.01,
			order = "06"
		},
		{
			type = "double-setting",
			name = "UMModulesRework-SpeedModule-QualityPenaltyMultiplierPerLevel",
			setting_type = "startup",
			minimum_value = 0.2,
			maximum_value = 5,
			default_value = 2,
			order = "07"
		}
	})
end

if(mods["space-exploration"]) then
    data:extend({
        { --PollutionPenalty
            type = "bool-setting",
            name = "UMModulesRework-SpeedModule-PollutionPenalty",
            setting_type = "startup",
            default_value = true,
            order = "08"
        },
        {
            type = "double-setting",
            name = "UMModulesRework-SpeedModule-StartPollutionPenalty",
            setting_type = "startup",
            minimum_value = 0,
            maximum_value = 10,
            default_value = 0.05,
            order = "09"
        },
        {
            type = "double-setting",
            name = "UMModulesRework-SpeedModule-PollutionPenaltyMultiplierPerLevel",
            setting_type = "startup",
            minimum_value = 0.2,
            maximum_value = 5,
            default_value = 2,
            order = "10"
        }
    })
end



data:extend({	
	--EfficiencyModule
	{ --Consumption
        type = "double-setting",
        name = "UMModulesRework-EfficiencyModule-StartConsumptionBonus",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.25,
		order = "20"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-EfficiencyModule-ConsumptionBonusMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "21"
    },
	
	
	{ --PollutionBonus
        type = "bool-setting",
        name = "UMModulesRework-EfficiencyModule-PollutionBonus",
        setting_type = "startup",
        default_value = true,
		order = "22"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-EfficiencyModule-StartPollutionBonus",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.05,
		order = "23"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-EfficiencyModule-PollutionBonusMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "24"
    },
	

	
	--ProductivityModule
	{ --Productivity
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-StartProductivity",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.05,
		order = "40"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-ProductivityMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "41"
    },
	
	
	{ --Consumption
        type = "bool-setting",
        name = "UMModulesRework-ProductivityModule-ConsumptionPenalty",
        setting_type = "startup",
        default_value = true,
		order = "42"
    },
	{ 
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-StartConsumption",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.25,
		order = "43"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-ConsumptionMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "44"
    },
	
	
	{ --SpeedPenalty
        type = "bool-setting",
        name = "UMModulesRework-ProductivityModule-SpeedPenalty",
        setting_type = "startup",
        default_value = true,
		order = "45"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-StartSpeedPenalty",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.05,
		order = "46"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-SpeedPenaltyMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "47"
    },
	
	
	{ --PollutionPenalty
        type = "bool-setting",
        name = "UMModulesRework-ProductivityModule-PollutionPenalty",
        setting_type = "startup",
        default_value = true,
		order = "48"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-StartPollutionPenalty",
        setting_type = "startup",
		minimum_value = 0,
		maximum_value = 10,
        default_value = 0.05,
		order = "49"
    },
	{
        type = "double-setting",
        name = "UMModulesRework-ProductivityModule-PollutionPenaltyMultiplierPerLevel",
        setting_type = "startup",
		minimum_value = 0.2,
		maximum_value = 5,
        default_value = 2,
		order = "50"
    },
	
	
	{
		type = "int-setting",
        name = "UMModulesRework-RoundingTo",
        setting_type = "startup",
        default_value = 5,
		allowed_values = {1, 2, 5, 10},
		order = "90"
	}
})

if mods["quality"] then
	data:extend({
		--Quality Module
		{--Quality
			type = "double-setting",
			name = "UMModulesRework-QualityModule-StartQuality",
			setting_type = "startup",
			minimum_value = 0,
			maximum_value = 10,
			default_value = 0.01,
			order = "60"
		},
		{
			type = "double-setting",
			name = "UMModulesRework-QualityModule-QualityMultiplierPerLevel",
			setting_type = "startup",
			minimum_value = 0.2,
			maximum_value = 5,
			default_value = 2,
			order = "61"
		},

		{--SpeedPenalty
			type = "bool-setting",
			name = "UMModulesRework-QualityModule-SpeedPenalty",
			setting_type = "startup",
			default_value = true,
			order = "62"
		},
		{
			type = "double-setting",
			name = "UMModulesRework-QualityModule-StartSpeedPenalty",
			setting_type = "startup",
			minimum_value = 0,
			maximum_value = 10,
			default_value = 0.05,
			order = "63"
		},
		{
			type = "double-setting",
			name = "UMModulesRework-QualityModule-SpeedPenaltyMultiplierPerLevel",
			setting_type = "startup",
			minimum_value = 0.2,
			maximum_value = 5,
			default_value = 0.05,
			order = "64"
		}
	})
end

if mods["RFT-modules"] then
	data:extend({
		{
			type = "bool-setting",
			name = "UMModulesRework-MergedModules",
			setting_type = "startup",
			default_value = true,
			order = "95"
		}
	})
end