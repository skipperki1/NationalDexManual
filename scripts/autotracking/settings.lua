function Spinoffs()
	if Tracker:ProviderCountForCode("Spinoffs") == 1 then
		return false
	else
		return true
	end
end

function Event()
	if Tracker:ProviderCountForCode("Event") == 1 then
		return false
	else
		return true
	end
end

function Save()
	if Tracker:ProviderCountForCode("Save") == 1 then
		return false
	else
		return true
	end
end

function Mythical()
	if Tracker:ProviderCountForCode("Mythical") == 1 then
		return false
	else
		return true
	end
end

function Legendaries()
	if Tracker:ProviderCountForCode("Legendaries") == 1 then
		return false
	else
		return true
	end
end

function Starters()
	if Tracker:ProviderCountForCode("Starters") == 1 then
		return true
	else
		return false
	end
end

function Regional()
	if Tracker:ProviderCountForCode("Regional") == 1 then
		return true
	else
		return false
	end
end

function RegionEvos()
	if Tracker:ProviderCountForCode("RegionEvos") == 1 then
		return true
	else
		return false
	end
end

