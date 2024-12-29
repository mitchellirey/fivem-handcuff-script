-- Start cuff
TriggerEvent('es:addGroupCommand', 'cuff', "user", function(source, args, user)
if(GetPlayerName(tonumber(args[2])) or GetPlayerName(tonumber(args[3])))then
local player = tonumber(args[2])
table.remove(args, 2)
table.remove(args, 1)

TriggerEvent("es:getPlayerFromId", player, function(target)
	TriggerClientEvent("mt:notify", source, "~y~You've arrested: ~b~" ..GetPlayerName(player).. ".")
	TriggerClientEvent("mt:notify", player, "~r~You have been handcuffed by "..GetPlayerName(source).. ".")
	TriggerClientEvent("Handcuff", player)
end)
else
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "You need to use the players ^3ID ^0 to arrest them.")
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "Ex: ^3/cuff 1")
end
end, function(source, args, user)
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "You don't have the correct permissions.")
end)

function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

-- End cuff

-- Start uncuff
TriggerEvent('es:addGroupCommand', 'uncuff', "user", function(source, args, user)
if(GetPlayerName(tonumber(args[2])) or GetPlayerName(tonumber(args[3])))then
local player = tonumber(args[2])
table.remove(args, 2)
table.remove(args, 1)

TriggerEvent("es:getPlayerFromId", player, function(target)
	TriggerClientEvent("mt:notify", source, "~y~You have uncuffed: ~b~" ..GetPlayerName(player).. ".")
	TriggerClientEvent("mt:notify", player, "~r~"..GetPlayerName(source).. " has uncuffed you.")
	TriggerClientEvent("uncuff", player)
end)
else
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "You need to use the players ^3ID ^0 to uncuff them.")
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "Ex: ^3/uncuff 1")
end
end, function(source, args, user)
TriggerClientEvent('chatMessage', source, "", {255, 0, 0}, "You don't have the correct permissions.")
end)

function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
-- End uncuff