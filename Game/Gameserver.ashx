game:GetService("RunService"):Run()
game:GetService("NetworkServer"):Start(53640, 20)
game:GetService("Visit")
function onJoined(newPlayer)
	newPlayer:LoadCharacter()
	while true do 
		wait(0.001) 
		if newPlayer.Character.Humanoid.Health == 0
			then wait(5) newPlayer:LoadCharacter()
			elseif newPlayer.Character.Parent == nil then wait(5) newPlayer:LoadCharacter()
		end
	end
end

game.Players.PlayerAdded:connect(onJoined)
