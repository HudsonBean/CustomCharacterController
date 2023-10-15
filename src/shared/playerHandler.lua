--//Modules
local CHARACTER_CONTROLLER : ModuleScript = require(game.ReplicatedStorage.Shared.characterHandler)

--//Services

--//Variables

--//Functions


--//Connections

--//Main
local PLAYER_HANDLER : table = {}
PLAYER_HANDLER.__index = PLAYER_HANDLER

function PLAYER_HANDLER.new(player : Player) -- Creates a new player object
	local playerObject : table = { }
	setmetatable(playerObject, PLAYER_HANDLER)
	
	-- Data
	playerObject.owner = player
	playerObject.character = CHARACTER_CONTROLLER.new(player) -- Create the custom character controller

	return playerObject
end

function PLAYER_HANDLER:Destroy(player : Player) -- Clean up method for destroying the pawn and breaking down the player Object
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN PLAYERHANDLER")
end

return PLAYER_HANDLER