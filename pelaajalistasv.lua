ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("esx:scripts:pelaajastatus")
AddEventHandler("esx:scripts:pelaajastatus", function()
	local pelaajia 		= ESX.GetPlayers()
	local status = {
		poliisit   = 0,
		lanssit    = 0,
		mekaanikot = 0,
		autopajat     = 0,
		pelaajat   = 0,
	}
	for i=1, #pelaajia, 1 do
		local xPlayer = ESX.GetPlayerFromId(pelaajia[i])

		status.pelaajat = status.pelaajat + 1

		if xPlayer.job.name == 'police' then
			status.poliisit = status.poliisit + 1
		end
		if xPlayer.job.name == 'ambulance' then
			status.lanssit = status.lanssit + 1
		end
		if xPlayer.job.name == 'mechanic' then
			status.mekaanikot = status.mekaanikot + 1
		end
		if xPlayer.job.name == 'autopaja' then
			status.autopajat = status.autopajat + 1
		end
	end
	TriggerClientEvent('esx:showAdvancedNotification', source, '~p~SERVUSI NIMI~w~', '~w~Pelaajalista', '', 'CHAR_MP_FM_CONTACT', 5)
	TriggerClientEvent('esx:showNotification', source, '~b~Poliiseja: '..status.poliisit..'  \n~r~Ensihoitoa: '..status.lanssit..'  \n~o~Mekaanikkoja: '..status.mekaanikot..'  \n~o~Autopaja: '..status.autopajat..'  \n~w~Pelaajia: '..status.pelaajat, 'basic')
end)
