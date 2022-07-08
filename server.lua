ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterCommand("calladmin", function(source, args, rawCommand)
    rawCommand = rawCommand:gsub("calladmin ", "")
    getGroup(source, rawCommand)
    --TriggerServerEvent("player:getGroup", source)
end, false) 



function getGroup(p, msg)
    for _, playerId in ipairs(GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        group = xPlayer.getGroup()
        if group ~= 'user' then
            xPlayer.showNotification('[' .. p .. '] Hat ein Admin gerufen!\nGrund: ' .. msg)
        end
        
    end

    
end



