RoundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
function Round(value)
	return (math.ceil(value / RoundTo) * RoundTo)
end

function GetTextIndex(tier)
	if tier == 1 then
		return ""
	else
		return "-"..tier
	end
end
