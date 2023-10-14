--//Modules
local playerHandler = require(game.ReplicatedStorage.Shared.playerHandler)

--//Services
local players = game:GetService("Players")

--//Variables
local playerTable = { }

--//Functions
local function playerAdded(player: Player) -- Fires from player added event
    local playerObject = playerHandler.new(player) -- Create the player object
    playerTable[player] = playerObject -- Put it in the table with the index of the player
end
local function playerRemoved(player: Player)
    local playerObject = playerTable[player] -- Get the player object from the player table
    playerObject:Destroy() -- Call clean up method on the object
    playerTable[player] = nil -- Remove the player from the player table
end

--//Connections
players.PlayerAdded:Connect(playerAdded) -- Fires when a player joins the server
players.PlayerRemoving:Connect(playerRemoved) -- Fires when a player leaves the server

--//Main