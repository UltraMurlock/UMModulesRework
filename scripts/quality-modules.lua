function UpdateQualityModule(name, tier)
	data.raw["module"][name].effect.quality = Round(QmQualityStart * 10 * QmQualityMult ^ (tier - 1))

	if(QmSpeedPenalty) then
		data.raw["module"][name].effect.speed = -Round(QmSpeedStart * QmSpeedMult ^ (tier - 1))
	else
		data.raw["module"][name].effect.speed = 0
	end
end