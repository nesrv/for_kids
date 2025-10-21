-- ПОМЕСТИТЕ В StarterPlayerScripts КАК LocalScript

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Ждем появления персонажа
player.CharacterAdded:Connect(function(character)
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local humanoid = character:WaitForChild("Humanoid")
    
    wait(1)
    
    -- Целевая точка полета
    local targetPart = workspace:FindFirstChild("Part")
    if not targetPart then return end
    
    -- Устанавливаем камеру от 3 лица
    camera.CameraType = Enum.CameraType.Scriptable
    
    -- Начальные позиции
    local startPos = humanoidRootPart.Position
    local targetPos = targetPart.Position + Vector3.new(0, 5, 0)
    
    -- Анимация полета персонажа (медленнее)
    local playerTween = TweenService:Create(
        humanoidRootPart,
        TweenInfo.new(6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Position = targetPos}
    )
    
    -- Анимация камеры следует за персонажем (дальше)
    local function updateCamera()
        local offset = Vector3.new(0, 15, 25)  -- Выше и дальше
        camera.CFrame = CFrame.new(humanoidRootPart.Position + offset, humanoidRootPart.Position)
    end
    
    -- Запускаем полет
    playerTween:Play()
    
    -- Обновляем камеру каждый кадр
    local connection
    connection = game:GetService("RunService").Heartbeat:Connect(updateCamera)
    
    -- После завершения полета
    playerTween.Completed:Connect(function()
        connection:Disconnect()
        camera.CameraType = Enum.CameraType.Custom
    end)
end)