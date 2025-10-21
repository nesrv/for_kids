-- ПРОСТОЙ СКРИПТ КАМЕРЫ ДЛЯ НОВИЧКОВ
-- Поместите в StarterPlayerScripts как LocalScript

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- wait(2) -- Ждем 2 секунды

-- Находим блок в игре
local block = workspace.Part

-- Делаем камеру управляемой скриптом
camera.CameraType = Enum.CameraType.Scriptable

-- Начальная позиция камеры (высоко в небе)
camera.CFrame = CFrame.new(0, 50, 0)

-- Конечная позиция камеры (рядом с блоком)
local endPosition = CFrame.new(block.Position + Vector3.new(0, 10, 15), block.Position)

-- Создаем плавное движение камеры (3 секунды)
local cameraMove = TweenService:Create(
    camera,
    TweenInfo.new(3),
    {CFrame = endPosition}
)

-- Запускаем движение камеры
cameraMove:Play()

-- Когда камера остановилась
cameraMove.Completed:Connect(function()
    -- Телепортируем игрока к блоку
    if player.Character then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(block.Position + Vector3.new(0, 5, 0))
    end
    
    -- Возвращаем обычную камеру
    camera.CameraType = Enum.CameraType.Custom
end)