-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

	local startSyllables = {
		"vu", "va", "ve", "hua", "syl", "ga", "ha", "la", "sha", "mor", "per"
	}
	local midSyllables = {
		"len", "gar", "van", "vel", "thi", "ron", "rath", "lad"
	}
	local endSyllables = {
		"len", "gar", "wyn", "rin", "nas", "iel"
	}
	
	function getName(numSyllables)
		local missing = numSyllables
		if (missing < 2) then
			missing = 2
		end
		
		local resultString
		
		local first = startSyllables[math.random(1,table.maxn(startSyllables))]
		local last = endSyllables[math.random(1,table.maxn(endSyllables))]
		
		missing = missing - 2
		resultString = first
		
		while (missing > 0) do
			local mid = midSyllables[math.random(1,table.maxn(midSyllables))]
			
			missing = missing - 1
			resultString = resultString .. mid
		end
		
		resultString = resultString .. last
		resultString = resultString:gsub("^%l", string.upper)
		return resultString
	end
	
	-- display.