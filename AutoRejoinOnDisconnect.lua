repeat wait() until game.CoreGui.RobloxPromptGui

local promptOverlay = game:WaitForChild("CoreGui"):WaitForChild("RobloxPromptGui").promptOverlay
local TS = game:GetService("TeleportService")

promptOverlay.ChildAdded:connect(function()
    repeat
    TS:Teleport(game.PlaceId)
    task.wait(2)    
    until false
end)


local info = {
Title = "Loaded";
Text = "Load Anti-Disconnect Sucessfully";
Duration = 10
}


game.StarterGui:SetCore("SendNotification", info)
