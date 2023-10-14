--//Modules
local characterController = require(game.ReplicatedStorage.Shared.characterController)

--//Services

--//Variables

--//Functions


--//Connections

--//Main
local playerHandler = {}
playerHandler.__index = playerHandler

function playerHandler.new(player: Player) -- Creates a new player object
	local playerObject = { }
	setmetatable(playerObject, playerHandler)
	
	-- Data
	playerObject.owner = player
	playerObject.pawn = characterController.new(player) -- Create the custom character controller

	return playerObject
end

function playerHandler:Destroy() -- Clean up method for destroying the pawn and breaking down the player Object
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN PLAYERHANDLER")
end

return playerHandler