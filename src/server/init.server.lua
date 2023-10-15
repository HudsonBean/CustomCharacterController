--//Modules
local playerHandler : ModuleScript = require(game.ReplicatedStorage.Shared.playerHandler)

--//Services
local players : Players = game:GetService("Players")

--//Variables
local playerTable : table = { }

--//Functions
local function playerAdded(player : Player) -- Fires from player added event
    local playerObject : table = playerHandler.new(player) -- Create the player object
    playerTable[player] = playerObject -- Put it in the table with the index of the player
    print(playerTable)
end
local function playerRemoved(player : Player)
    local playerObject : table = playerTable[player] -- Get the player object from the player table
    playerObject:Destroy() -- Call clean up method on the object
    playerTable[player] = nil -- Remove the player from the player table
end

--//Connections
players.PlayerAdded:Connect(playerAdded) -- Fires when a player joins the server
players.PlayerRemoving:Connect(playerRemoved) -- Fires when a player leaves the server

--//Main