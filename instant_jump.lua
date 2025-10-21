-- Поместите в StarterPlayerScripts как LocalScript
local player = game.Players.LocalPlayer

player.CharacterAdded:Connect(function(character)
	local humanoid = character:WaitForChild("Humanoid")
	humanoid.JumpHeight = 500  -- Для новых персонажей используйте JumpHeight
end)