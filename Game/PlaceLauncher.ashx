--Cjgtasamcpe's join script

game:GetService("InsertService"):SetAssetUrl("http://www.roblox.com/Asset/?id=%d")
game:GetService("InsertService"):SetAssetVersionUrl("http://www.roblox.com/Asset/?assetversionid=%d")
game:GetService("InsertService"):SetBaseCategoryUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=20&type=user&userid=%d")
game:GetService("InsertService"):SetBaseSetsUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=10&type=base")
game:GetService("InsertService"):SetCollectionUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?sid=%d")
game:GetService("InsertService"):SetFreeDecalUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?type=fd&q=%s&pg=%d&rs=%d")
game:GetService("InsertService"):SetFreeModelUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?type=fm&q=%s&pg=%d&rs=%d")
game:GetService("SocialService"):SetBestFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsBestFriendsWith&playerid=%d&userid=%d")
game:GetService("SocialService"):SetFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsFriendsWith&playerid=%d&userid=%d")
game:GetService("SocialService"):SetGroupRankUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=GetGroupRank&playerid=%d&groupid=%d")
game:GetService("SocialService"):SetGroupRoleUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=GetGroupRole&playerid=%d&groupid=%d")
game:GetService("SocialService"):SetGroupUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsInGroup&playerid=%d&groupid=%d")
game:GetService("GamePassService"):SetPlayerHasPassUrl("http://www.roblox.com/Game/GamePass/GamePassHandler.ashx?Action=HasPass&UserID=%d&PassID=%d")
game:GetService("MarketplaceService"):SetDevProductInfoUrl("https://api.roblox.com/marketplace/productDetails?productId=%d")
game:GetService("MarketplaceService"):SetPlayerOwnsAssetUrl("https://api.roblox.com/marketplace/productinfo?assetId=%d")
game:GetService("MarketplaceService"):SetProductInfoUrl("https://api.roblox.com/ownership/hasasset?userId=%d&assetId=%d")
game:GetService("ScriptInformationProvider"):SetAssetUrl("http://www.roblox.com/Asset/?id=%d")
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
local peli = nc:PlayerConnect(0, "localhost", 53640, 0, 30)
peli.SetSuperSafeChat(false)
game:GetService("Players"):SetChatStyle(Enum.ChatStyle.ClassicAndBubble)
