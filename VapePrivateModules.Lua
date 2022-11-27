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
            ScriptSettings.AnticheatDisabler = true
        else
            ScriptSettings.AnticheatDisabler = false
        end
    end,
    Default = false,
    HoverText = false
})
