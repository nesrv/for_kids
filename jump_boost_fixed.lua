a = script.Parent

function c(d)
	local character = d.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		a.CanCollide = false
		humanoid.JumpPower = 150
		
		-- Возвращаем обычную силу прыжка через 0.1 секунды
		wait(0.1)
		humanoid.JumpPower = 50
		a.CanCollide = true
	end
end

a.Touched:Connect(c)