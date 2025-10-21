game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		local humanoid = character:WaitForChild("Humanoid")
		humanoid.JumpPower = 500  -- Обычно 50, увеличиваем в 10 раз
	end)
end)