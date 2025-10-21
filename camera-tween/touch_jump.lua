a = script.Parent

function c(d)
	local character = d.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.JumpHeight = 500
	end
end

a.Touched:Connect(c)