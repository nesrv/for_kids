-- ПОМЕСТИТЕ В StarterPlayerScripts КАК LocalScript

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

wait(2)
-- Целевая часть для камеры
local targetPart = workspace.Part


-- Устанавливаем камеру в режим скрипта
camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CFrame.new(0, 50, 0) -- Начальная позиция

-- Создаем плавное движение к целевой части
local targetCFrame = CFrame.new(targetPart.Position + Vector3.new(0, 10, 15), targetPart.Position)

local tween = TweenService:Create(
	camera,
	TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{CFrame = targetCFrame}
)

tween:Play()

-- После завершения анимации телепортируем игрока и возвращаем камеру
tween.Completed:Connect(function()
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		character.HumanoidRootPart.CFrame = CFrame.new(targetPart.Position + Vector3.new(0, 5, 0))
	end
	camera.CameraType = Enum.CameraType.Custom
end)