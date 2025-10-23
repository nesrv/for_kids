wait(5)  -- Ждет 5 секунд

A = script.Parent  -- Сохраняет родительский объект скрипта в переменную A

A.Smoke.Enabled = true  -- Включает дым у объекта A
wait(1)  -- Ждет 1 секунду

A.Fire.Enabled = true  -- Включает огонь у объекта A
wait(1)  -- Ждет 1 секунду

B = Instance.new('BodyForce', A)  -- Создает новую силу BodyForce внутри объекта A
B.Force = Vector3.new(0, 150000, 0)  -- Устанавливает направление силы вверх с большой мощностью

game.Lighting.ClockTime = 0  -- Устанавливает время суток на полночь



A = script.Parent  -- Сохраняет родительский объект скрипта в переменную A

function B()
	workspace.Raketa.Script.Disabled = false  -- Включает скрипт ракеты
end

A.ClickDetector.MouseClick:Connect(B)  -- При клике на объект вызывает функцию B