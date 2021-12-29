local DensityMultiplier = 1.0
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
	end
end)

Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(1000)
	    local hour = GetClockHours()
		if (hour >= 7 and hour <= 10) then
			DensityMultiplier = 0.9
		elseif (hour >= 11 and hour <= 15) then
			DensityMultiplier = 0.7
		elseif (hour >= 16 and hour <= 19) then
			DensityMultiplier = 0.9
		elseif (hour >= 20 and hour <= 21) then
			DensityMultiplier = 0.4
		elseif (hour == 23 or hour == 22 or (hour >= 0 and hour <= 5)) then
			DensityMultiplier = 0.2
		elseif (hour == 6) then
			DensityMultiplier = 0.4
		end
	end
end)