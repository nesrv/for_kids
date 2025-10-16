game.Players.CharacterAutoLoads = false

function A(player)	
	local H = Instance.new('HumanoidDescription')

	-- Масштаб и цвет
	H.HeadScale = 2
	H.TorsoColor = Color3.new(0.117647, 1, 0.780392)

	-- Принудительно устанавливаем R6 для работы анимаций
	H.Head = 0
	H.LeftArm = 0
	H.RightArm = 0
	H.LeftLeg = 0
	H.RightLeg = 0
	H.Torso = 0

	-- Нестандартные анимации для R6
	H.JumpAnimation = "rbxassetid://6588315023"  -- Энергичный прыжок
	H.RunAnimation = "rbxassetid://6370362120"   -- Ниндзя бег
	H.WalkAnimation = "rbxassetid://6370329764"  -- Мультяшная походка
	H.ClimbAnimation = "rbxassetid://707829716"  -- Лазание
	H.FallAnimation = "rbxassetid://707829716"   -- Падение
	H.IdleAnimation = "rbxassetid://616158929"   -- Стояние
	H.SwimAnimation = "rbxassetid://707829716"   -- Плавание
	
	-- Простая нестандартная анимация эмоции
	H.EmoteAnimation = "rbxassetid://3360686498"  -- Танец робота

	player:LoadCharacterWithHumanoidDescription(H)
end

game.Players.PlayerAdded:Connect(A)