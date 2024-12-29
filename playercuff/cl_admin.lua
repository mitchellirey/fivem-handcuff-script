RegisterNetEvent("mt:notify")
AddEventHandler("mt:notify", function(text, time)
	ClearPrints()
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end)

-- Start Cuff
RegisterNetEvent("Handcuff")
AddEventHandler("Handcuff", function()
	local lPed = GetPlayerPed(-1)
	if DoesEntityExist(lPed) then
		Citizen.CreateThread(function()
			RequestAnimDict("mp_arresting")
			while not HasAnimDictLoaded("mp_arresting") do
				Citizen.Wait(100)
			end
			
			if IsEntityPlayingAnim(lPed, "mp_arresting", "idle", 3) then
				SetEnableHandcuffs(lPed, true)
			else
				TaskPlayAnim(lPed, "mp_arresting", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
				SetEnableHandcuffs(lPed, true)
			end		
		end)
	end
end)
-- End cuff

-- Start uncuff
RegisterNetEvent("uncuff")
AddEventHandler("uncuff", function()
	local lPed = GetPlayerPed(-1)
	if DoesEntityExist(lPed) then
		Citizen.CreateThread(function()
			RequestAnimDict("mp_arresting")
			while not HasAnimDictLoaded("mp_arresting") do
				Citizen.Wait(100)
			end
			
			if IsEntityPlayingAnim(lPed, "mp_arresting", "idle", 3) then
				ClearPedSecondaryTask(lPed)
				SetEnableHandcuffs(lPed, false)
			end		
		end)
	end
end)
-- End uncuff