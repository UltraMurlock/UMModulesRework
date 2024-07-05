RoundTo = settings.startup["UMModulesRework-RoundingTo"].value / 100
function Round(value)
	return (math.ceil(value / RoundTo) * RoundTo)
end

function GetTextIndex(level)
	if level == 1 then
		return ""
	else
		return "-"..level
	end
end
