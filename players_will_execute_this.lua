--DOORS Floor 2 Mode Mod
--Execute at pre-run shop.
local list = {
    ["FeralCalamity"] = true,
    ["NovaNextruis"] = true,
    ["CautionBobo"] = true,
    ["SnowieGamesZ"] = true,
    ["SpeedRunSnowie"] = true,
    ["FPS_PL"] = true,
    ["iCherryKardes"] = true
}
if not list[game.Players.LocalPlayer.Name] then
    	firesignal(game:GetService("ReplicatedStorage").EntityInfo.DeathHint.OnClientEvent,{"Welp..","It seems that.. Guiding light doesn't want to tell you on why you died..","Anyways.. you aren`t whitelisted.","Oh, I Figured... You want the script! I mean.. this isnt the public edition. Or it just isnt released!","Well anyways, Remember this"},"Yellow")
	task.wait(.2)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):TakeDamage(500)
else
   if game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 0 then
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.DeathHint.OnClientEvent,{"Oh.. Hello!","It seems that.. Guiding light doesn't want to tell you on why this happened!","Anyways.. What did you die to?","Oh, I Figured... You executed the script after A-0000! I mean.. Door 0?","Well anyways, Remember this"},"Yellow")
	task.wait(.2)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):TakeDamage(500)
end

if game.Workspace:FindFirstChild("endlessdoors") then
	firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"Fired Twice(2x); Returning..")
	return
end
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

TextChatService.OnIncomingMessage = function(message: TextChatMessage)
    local properties = Instance.new("TextChatMessageProperties")

    if message.TextSource then
        local player = Players:GetPlayerByUserId(message.TextSource.UserId)
        if player.Name == "iCherryKardes" then
            properties.PrefixText = "<font color='#F5CD30'>[Developer] [Cool Scripter]</font> " .. message.PrefixText
        elseif player.Name == "FeralCalamity" then
            properties.PrefixText = "<font color='#F5CD30'>[Developer] [Director]</font> " .. message.PrefixText
        elseif player.Name == "NovaNextruis" then
            properties.PrefixText = "<font color='#F5CD30'>[Developer]</font> " .. message.PrefixText
        end
    end

    return properties
end	
local Verif = Instance.new("WorldModel",workspace)
Verif.Name = "endlessdoors"

function ReplaceGitAu(GithubSnd,SoundName)
		local url=GithubSnd
		if not isfile(SoundName..".mp3") then
			writefile(SoundName..".mp3", game:HttpGet(url))
		end
		return (getcustomasset or getsynasset)(SoundName..".mp3")
	end
---------------------------------
--Initiation
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Init.lua"))()
game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
    --Entities
    local Depth = false
    spawn(function() --Depth
        while true do
            if Depth == false then
                Depth = true
                wait(110)
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
             wait(200)
             game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
             wait(.25)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Silence.lua"))()


Silence = false
end
end
end)
local Fester = false
spawn(function()
        while true do
            if Fester == false then
                Fester = true
                wait(300)
                game:GetService("ReplicatedStorage").GameData.LatestRoom.Changed:Wait()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/Fester.lua"))()
                Fester = false
                end
            end
        end)
end

