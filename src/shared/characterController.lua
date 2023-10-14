--//Modules

--//Services

--//Variables

--//Functions


--//Connections

--//Main
local characterController = {}
characterController.__index = characterController

function characterController.new(player: Player) -- Creates a new player object
	
end

function characterController:Destroy()
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN CHARACTER CONTROLLER")
end

return characterController