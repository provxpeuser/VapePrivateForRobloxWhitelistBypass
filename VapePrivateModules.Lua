-- Public Custom Capybara Modules By Ham#4565 --
-- I removed the patched modules from the custom --
repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end


function notify(text)
    local frame = GuiLibrary["CreateNotification"]("Capybara V1 Notification", text, 5, "assets/WarningNotification.png")
    frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function boxnotify(text)
    if messagebox then
        messagebox(text, "Capybara V1", 0)
     end
end

local AnticheatDisabler = COB("World", {
    Name = "Auto Win",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = "Automaticlly Wins The Game."
})
 
local AnticheatDisabler = COB("Render", {
    Name = "CursorFix",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = "fixes cursor in old bedwars"
})
 
local AnticheatDisabler = COB("Render", {
    Name = "CameraFix2",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = "fixes camera"
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "DroneExploit",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = "Collects everything with a drone, not requering the p2w kit"
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "ZiplineTP",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = "tps to nearest zipline placement humanoid"
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "AntiCrash",
    Function = function(callback) 
        if callback then
		for i2,v2 in pairs(getconnections(bedwars["Client"]:Get("LightningStrike")["instance"].OnClientEvent)) do
			v2:Disable()
        end
    end,
    Default = false,
    HoverText = false
})

local AnticheatDisabler = COB("Utility", {
    Name = "IgnorePlaceRegions",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "Retexture",
    Function = function(callback) 
        if callback then
    local obj = game:GetObjects("rbxassetid://11144793662")[1]
                obj.Name = "Part"
                obj.Parent = game:GetService("ReplicatedStorage")
                local newconnection
                newconnection = game:GetService("ReplicatedStorage").ChildAdded:Connect(function(v)
                    for i,x in pairs(obj:GetChildren()) do
                        x:Clone().Parent = v
                    end
                    newconnection:Disconnect()
                end)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/eLeCtRaDoMiNuS/milkwareclient/main/texture.lua"))()
        end
    end,
    Default = false,
    HoverText = false
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "Transparancy",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "BlockExploit",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
 
local AnticheatDisabler = COB("Utility", {
    Name = "AutoSkywars",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
  
local AnticheatDisabler = COB("Utility", {
    Name = "ProjectileExploit",
    Function = function(callback) 
        if callback then
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
