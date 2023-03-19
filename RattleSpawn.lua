--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]--

--// Instances

local greed_warb = Instance.new("ScreenGui")
greed_warb.DisplayOrder = 1423214123
greed_warb.IgnoreGuiInset = true
greed_warb.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
greed_warb.ResetOnSpawn = false
greed_warb.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
greed_warb.Name = "GreedWarb"
greed_warb.Parent = game:GetService("CoreGui")

local greedwarn = Instance.new("Sound")
greedwarn.PlaybackSpeed = 0.699999988079071
greedwarn.SoundId = "rbxassetid://9120925046"
greedwarn.Volume = 2
greedwarn.Name = "greedWarn"
greedwarn.Parent = greed_warb

local greedend = Instance.new("Sound")
greedend.SoundId = "rbxassetid://9114376261"
greedend.Volume = 2
greedend.Name = "greedEnd"
greedend.Parent = greed_warb

local greed_idk = Instance.new("ImageLabel")
greed_idk.Image = "rbxassetid://0000"
greed_idk.ImageColor3 = Color3.new(0.333333, 0.0156863, 0.262745)
greed_idk.ImageTransparency = 1
greed_idk.ResampleMode = Enum.ResamplerMode.Pixelated
greed_idk.BackgroundColor3 = Color3.new(1, 1, 1)
greed_idk.BackgroundTransparency = 1
greed_idk.Size = UDim2.new(1, 0, 1, 0)
greed_idk.Visible = true
greed_idk.Name = "GreedIdk"
greed_idk.Parent = greed_warb

local local_script = Instance.new("LocalScript")
local_script.Parent = greed_warb

--//Modules

local modules = {}

--// Scripts

-- LocalScript
task.spawn(function()
	local script = local_script

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	script.Parent.greedWarn:Play()
	game:GetService("TweenService"):Create(script.Parent.GreedIdk,TweenInfo.new(.4),{ImageTransparency = 0.6}):Play()
	local OkBro = false
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		if OkBro == false then
			game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Rattle"
			firesignal(game:GetService("ReplicatedStorage").EntityInfo.DeathHint.OnClientEvent,{"You died to Rattle..","He likes to catch you off-guard when you open a door.","If you think hes nearby, wait until you suspect hes gone!"},"Blue")
			wait(.7)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):TakeDamage(50)
		end
	end)
	wait(7)
	OkBro = true
	script.Parent.greedEnd:Play()
	game:GetService("TweenService"):Create(script.Parent.GreedIdk,TweenInfo.new(.4),{ImageTransparency = 1}):Play()
	wait(1)
	script.Parent:Destroy()
end)
