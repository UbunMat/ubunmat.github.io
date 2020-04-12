--Cjgtasamcpe's play solo script

local peli = game:GetService("Players"):CreateLocalPlayer(0)
peli:LoadCharacter()
game:GetService("RunService"):Run()
while true do
	wait(0.001)
	if peli.Character.Humanoid.Health == 0 then
		wait(5)
		peli:LoadCharacter()
	end
end
