game.Players.CharacterAutoLoads = false

function A(player)	
	local H = Instance.new('HumanoidDescription')

	-- Масштаб и цвет
	H.HeadScale = 2
	H.TorsoColor = Color3.new(0.117647, 1, 0.780392)

	
	player:LoadCharacterWithHumanoidDescription(H)
	
	player.CharacterAdded:Connect(function(char)
		local humanoid = char:WaitForChild("Humanoid")
		humanoid.WalkSpeed = 50
		humanoid.JumpPower = 100
	end)
end

game.Players.PlayerAdded:Connect(A)