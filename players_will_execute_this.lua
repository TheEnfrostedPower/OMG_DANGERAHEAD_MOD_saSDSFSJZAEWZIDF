--DOORS Floor 2 Mode Mod
--Execute at pre-run shop.
---------------------------------
--Initiation
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Init.lua"))()
    --Entities
    local Depth = false
    spawn(function() --Depth
        while true do
            if Depth == false then
                Depth = true
                wait(50)
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Depth.lua"))()
Depth = false
end
end
end)
local Silence = false
 spawn(function()
     while true do
         if Silence == false then
             Silence = true
             wait(120)
             game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
             wait(.25)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Silence.lua"))()


Silence = false
end
end
end)
local Backtrack = false
spawn(function()
        while true do
            if Backtrack == false then
                Backtrack = true
                wait(290)
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Backtrack.lua"))()
                Backtrack = false
                end
            end
        end)
