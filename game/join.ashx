--Cjgtasamcpe's join script

local peli = game:GetService("Players"):CreateLocalPlayer(0)
peli.Name = "BetaTester"
peli:SetSuperSafeChat(false)
game:GetService("Visit")
function accepted(peer, replicator)
local marker = replicator:SendMarker()
game:SetMessageBrickCount()
marker.Received:wait()
game:ClearMessage()
end
function failed(peer, code, reason)
game:SetMessage("ERROR!!! SEE YOU LATER!")
end
function denied(peer)
game:SetMessage("Connect to a different server")
end
game:SetMessage("Connecting to Server")
local nc = game:GetService("NetworkClient")
local ca = nc.ConnectionAccepted
local cf = nc.ConnectionFailed
local cr = nc.ConnectionRejected
ca:connect(accepted)
cf:connect(failed)
cr:connect(denied)
nc:Connect("localhost", 53640, 0, 30)
