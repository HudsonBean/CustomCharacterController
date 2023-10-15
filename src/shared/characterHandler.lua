--//Modules

--//Services

--//Variables

local CHARACTER_COMPONENTS : ModuleScript = game.ServerStorage.CharacterComponents

--//Functions


--//Connections

--//Main
local CHAR_HANDLER = {}

function CHAR_HANDLER.new(player: Player) -- Creates a new player object
	local CHARACTER : Instance = CHARACTER_COMPONENTS.Pill:clone()
	CHARACTER.Name = player.Name .. " Pill"
	CHARACTER.Parent = workspace.Characters
	CHARACTER.PrimaryPart:SetNetworkOwner(player)
	return CHARACTER
end

function CHAR_HANDLER:Destroy(a : group)
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN CHARACTER CONTROLLER")
end

return CHAR_HANDLER