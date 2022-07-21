RegisterNetEvent("giveaccess")
AddEventHandler("giveaccess", function(pid)
    --ExecuteCommand("alarm_on")
    exports.AspireRPV2_DoorLocks:GiveDoorPerms(pid)
end)

RegisterNetEvent("removeaccess")
AddEventHandler("removeaccess", function(pid)
    --ExecuteCommand("alarm_off")
    exports.AspireRPV2_DoorLocks:RemoveDoorPerms(pid)
end)

RegisterNetEvent("GiveAccessToKeyCardViaFound")
AddEventHandler("GiveAccessToKeyCardViaFound", function(pid)
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Prison Break", "You Found a Keycard :/"}
      })  
    -- exports.AspireRPV2_DoorLocks:GiveDoorPerms(pid)
end)

RegisterNetEvent("HasKeyCard")
AddEventHandler("HasKeyCard", function(pid)
    haskeycard = true
end)

RegisterNetEvent("HasKeyCard1")
AddEventHandler("HasKeyCard1", function(pid) 
        haskeycard = false
end)

RegisterCommand("keycard", function()
    if haskeycard then 
        TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true, args = {"Prison Break", "You have a keycard :D"}})
        else
        TriggerEvent('chat:addMessage', {color = { 255, 0, 0}, multiline = true, args = {"Prison Break", "You Don't have a keycard :("}})            
end
end)

function GiveAccessToKeyCardViaPod()
	TriggerEvent('GiveAccessToKeyCardViaFound')
    haskeycard = true
end
  
exports('GiveAccessToKeyCardViaPod', function()
	TriggerEvent('GiveAccessToKeyCardViaFound')
    haskeycard = true
end)


function GetKeycard()
    if haskeycard then 
        return true 
    else 
        return false 
    end 
end

exports('GetKeycard', function() 
    if haskeycard then 
        return true 
    else 
        return false 
    end 
end)
