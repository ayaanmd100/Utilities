
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Utilities v0.2", "Ocean")
local info2 = {Title = "Rejoining"; Text = "Rejoining The Game...."; Duration = 10}
local info = {Title = "Loaded";Text = "Loaded Infinite Yield";Duration = 10}
local loadinginfo = {Title = "Loading"; Text = "Hold on a sec..."; Duration = 5}
local info3 = {Title = "Loaded"; Text = "Loaded Anti-Idle Sucessfully!"; Duration = 10}
-- MAIN
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Infinite Yield")
------------------------------------------------------------------------------------
Section:NewButton("Infinite Yield", "Loads Infinite Yield", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
        game.StarterGui:SetCore("SendNotification", info)
        
    end)
---------------------------------------------------------------------------
local Section2 = Tab.NewSection("Utilities")

Section2:NewButton("Rejoin Game", "Rejoins the game!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ayaanmd100/Utilities/main/Rejoin.lua"))()
    game.StarterGui:SetCore("SendNotification", info2)
end)
----------------------------------------------
Section2:NewToggle("Anti-Disconnect", "Auto-Rejoin when the script detects a disconnect prompt in CoreGui.", function(state)
    if state then
        game.StarterGui:SetCore("SendNotification", loadinginfo)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ayaanmd100/Utilities/main/AutoRejoinOnDisconnect.lua"))()
    else
        return end
end)
--------------------------------
Section2:NewToggle("Anti-Idle", "Prevents game from kicking you if you are idle", function(state)
    if state then
        game.StarterGui:SetCore("SendNotification", loadinginfo)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ayaanmd100/Utilities/main/Anti-Idle.lua"))()
        game.StarterGui:SetCore("SendNotification", info3)
    else
        return end
end)
