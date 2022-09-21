repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')

po.ChildAdded:connect(function(a)
        repeat
            ts:Teleport(game.PlaceId)
            wait(2)
        until false
    end)

print("Loaded Anti-Disconnect by ayaanmd100")
