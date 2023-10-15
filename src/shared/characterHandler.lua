--//Modules

--//Services

--//Variables

local CHARACTER_COMPONENTS : ModuleScript = game.ServerStorage.CharacterComponents

--//Functions


--//Connections

--//Main
local CHAR_HANDLER = {}

function CHAR_HANDLER.new(player: Player) -- Creates a new player object
	local NEW_PILL : Instance = CHARACTER_COMPONENTS.Pill:clone()
	NEW_PILL.Name = ""
	return NEW_PILL
end

function CHAR_HANDLER:Destroy(a : group)
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN CHARACTER CONTROLLER")
end

return CHAR_HANDLER