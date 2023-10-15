--//Modules

--//Services

--//Variables

local CHARACTER_COMPONENTS : ModuleScript = game.ServerStorage.CharacterComponents

--//Functions


--//Connections

--//Main
local CHAR_HANDLER = {}

function CHAR_HANDLER.new(player: Player) -- Creates a new player object
	local CHARACTER : Instance = CHARACTER_COMPONENTS.Pill:clone() -- Clone the character in server storage
	CHARACTER.Name = player.Name .. " Pill" -- Name it with the playerd nsmr
	CHARACTER.Parent = workspace.Characters -- Place it into the world
	CHARACTER.PrimaryPart:SetNetworkOwner(player) -- Give network ownership
	return CHARACTER
end

function CHAR_HANDLER:Destroy(a : group)
	-- Do clean up
	print("CLEANING UP FROM DESTROY CALL IN CHARACTER CONTROLLER")
end

return CHAR_HANDLER