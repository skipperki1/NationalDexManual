function Spinoffs()
	if Tracker:FindObjectForCode("Spinoffs").Active then
		return true
	else
		return false
	end
end

function Event()
	if Tracker:FindObjectForCode("Event").Active then
		return true
	else
		return false
	end
end

function Save()
	if Tracker:FindObjectForCode("Save").Active then
		return true
	else
		return false
	end
end

function Mythical()
	if Tracker:FindObjectForCode("Mythical").Active then
		return true
	else
		return false
	end
end

function Legendaries()
	if Tracker:FindObjectForCode("Legendaries").Active then
		return true
	else
		return false
	end
end

function Starters()
	if Tracker:FindObjectForCode("Starters").Active then
		return true
	else
		return false
	end
end

function Regional()
	if Tracker:FindObjectForCode("Regional").Active then
		return true
	else
		return false
	end
end

function RegionEvos()
	if Tracker:FindObjectForCode("RegionEvos").Active then
		return true
	else
		return false
	end
end

function VictoryCon()
	if Tracker:ProviderCountForCode("TotalPokemonCaught") == neededPokemon() then
		return true
	else
		return false
	end
end

function neededPokemon()
	local needs = 827
	if Event() then
		needs = needs + 5
	end
	if Mythical() then
		needs = needs + 11
	end
	if Legendaries() then
		needs = needs + 82
	end
	if Starters() then
		needs = needs + 81
	end
	if Regional() then
		needs = needs + 53
	end
	if RegionEvos() then
		needs = needs + 9
	end
	if (Spinoffs() and Event()) then
		needs = needs + 5
	end
	if (Save() and Mythical()) then
		needs = needs + 4
	end
	if (Legendaries() and Regional()) then
		needs = needs + 3
	end
	return needs
end

function NeededCount()
	local counts = neededPokemon()
	local Thou = Tracker:FindObjectForCode("Thousand")
	local Hund = Tracker:FindObjectForCode("Hundred")
	local Tens = Tracker:FindObjectForCode("Tens")
	local Ones = Tracker:FindObjectForCode("Ones")
	if counts >= 1000 then
		Thou.CurrentStage = 2
	else
		Thou.CurrentStage = 1
	end
	if counts >= 1000 then
		counts = counts - 1000
	end
	if counts >= 900 then
			Hund.CurrentStage = 10
		elseif counts >= 800 then
			Hund.CurrentStage = 9
		elseif counts >= 700 then
			Hund.CurrentStage = 8
		elseif counts >= 600 then
			Hund.CurrentStage = 7
		elseif counts >= 500 then
			Hund.CurrentStage = 6
		elseif counts >= 400 then
			Hund.CurrentStage = 5
		elseif counts >= 300 then
			Hund.CurrentStage = 4
		elseif counts >= 200 then
			Hund.CurrentStage = 3
		elseif counts >= 100 then
			Hund.CurrentStage = 2
		else
			Hund.CurrentStage = 1
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts > 100 then
		counts = counts - 100
	end
	if counts >= 100 then
		counts = counts - 100
	end
	if counts >= 90 then
			Tens.CurrentStage = 10
		elseif counts >= 80 then
			Tens.CurrentStage = 9
		elseif counts >= 70 then
			Tens.CurrentStage = 8
		elseif counts >= 60 then
			Tens.CurrentStage = 7
		elseif counts >= 50 then
			Tens.CurrentStage = 6
		elseif counts >= 40 then
			Tens.CurrentStage = 5
		elseif counts >= 30 then
			Tens.CurrentStage = 4
		elseif counts >= 20 then
			Tens.CurrentStage = 3
		elseif counts >= 10 then
			Tens.CurrentStage = 2
		else
			Tens.CurrentStage = 1
		end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts > 10 then
		counts = counts - 10
	end
	if counts >= 10 then
		counts = counts - 10
	end
		if counts >= 9 then
			Ones.CurrentStage = 10
		elseif counts >= 8 then
			Ones.CurrentStage = 9
		elseif counts >= 7 then
			Ones.CurrentStage = 8
		elseif counts >= 6 then
			Ones.CurrentStage = 7
		elseif counts >= 5 then
			Ones.CurrentStage = 6
		elseif counts >= 4 then
			Ones.CurrentStage = 5
		elseif counts >= 3 then
			Ones.CurrentStage = 4
		elseif counts >= 2 then
			Ones.CurrentStage = 3
		elseif counts >= 1 then
			Ones.CurrentStage = 2
		else
			Ones.CurrentStage = 1
		end
	end