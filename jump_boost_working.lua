a = script.Parent

function c(d)
	local character = d.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		a.CanCollide = false
		humanoid.JumpPower = 150
		
		-- Используем spawn чтобы не блокировать скрипт
		spawn(function()
			wait(0.1)
			humanoid.JumpPower = 50
			a.CanCollide = true
		end)
	end
end

a.Touched:Connect(c)