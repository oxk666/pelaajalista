local cooldown = false
RegisterCommand('pelaajat', function() -- Komento minkä kirjoitat chattiin, että avaa pelaajalistan
	if not cooldown then
		cooldown = true
	    TriggerServerEvent('esx:scripts:pelaajastatus', source)
	    SetTimeout(10000, function() cooldown = false end)
	end
end)

