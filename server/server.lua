local haskeycard1 = false

AddEventHandler('chatMessage', function(id, name, msg)
    local args = stringsplit(msg, ' ')
    local cmd = table.remove(args, 1)

    if (cmd == "/givekeycard") then
        local pid = table.remove(args, 1)
        if (pid ~= nil) then

            haskeycard1 = true
            TriggerClientEvent('chatMessage', pid, '^1Prison Break', { 0, 0, 0 }, 'You where given an LEO Keycard!', pid)
            TriggerClientEvent("HasKeyCard", pid)
            --exports["AspireRPV2_DoorLocks"]:GivePlayerAccessToDoors(tonumber(pid))
            TriggerClientEvent("giveaccess", pid)

            else

            TriggerClientEvent('chatMessage', source, '^1Prison Break', { 0, 0, 0 }, 'You need to enter a players serverID!')

        end
    end
end)
AddEventHandler('chatMessage', function(id, name, msg)
    local args = stringsplit(msg, ' ')
    local cmd = table.remove(args, 1)

    if (cmd == "/removekeycard") then
        local pid = table.remove(args, 1)
        if (pid ~= nil) then

            haskeycard1 = false
            TriggerClientEvent("HasKeyCard1", pid)
            TriggerClientEvent('chatMessage', pid, '^1Prison Break', { 0, 0, 0 }, 'Your Keycard was removed :(', pid)
            --exports["AspireRPV2_DoorLocks"]:GivePlayerAccessToDoors(tonumber(pid))
            TriggerClientEvent("removeaccess", pid)

            else

            TriggerClientEvent('chatMessage', source, '^1Prison Break', { 0, 0, 0 }, 'You need to enter a players serverID!')

        end
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end