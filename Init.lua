

--DOORS Danger Ahead Script
--Execute on shop!
firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, "@".. game.Players.LocalPlayer.Name .." Is authorized.")
getgenv().UpdateStars = false -- stars disappear after picking up a book/breaker pole | false: a little lag
getgenv().OnShop = true -- can buy on pre run shop
getgenv().Price = 69 -- tablet price on shop
getgenv().Description = "The ultra A-1000 tablet: Now obtainable in shop." -- tablet description on shop

loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()


--Notification
firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, "@".. game.Players.LocalPlayer.Name .." Is authorized.")

-- Achievement
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "The Cave",
    Desc = "Deep in the Hotel!",
    Reason = 'Enter Floor 2!',
    Image = "https://tr.rbxcdn.com/e97b809a33e25c3ca823b224b3f981b9/420/420/Image/Png",
})

-- Sounds
game.Workspace.Ambience_Figure.SoundId = game.Workspace.Ambience_FigureIntense.SoundId
game.Workspace.Ambience_Figure.Volume = 0.7
function ReplaceGitAu(GithubSnd,SoundName)
        local url=GithubSnd
        if not isfile(SoundName..".mp3") then
            writefile(SoundName..".mp3", game:HttpGet(url))
        end
        return (getcustomasset or getsynasset)(SoundName..".mp3")
    end

local ReplaceSeekSong = ReplaceGitAu("https://github.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/blob/main/Ready_Or_Not.mp3?raw=true","Ready Or Not")
workspace:FindFirstChild("Ambience_Seek").SoundId = ReplaceSeekSong
game.Workspace.Ambience_Seek.TimePosition = 4
game.Workspace.Ambience_Seek.Volume = 3
game.Workspace.Ambience.Hotel.Ambience_Hotel.SoundId = "rbxassetid://273398061"
game.Workspace.Ambience.Hotel.Ambience_Hotel.Volume = 0.3
game.Workspace.Ambience.Hotel.Ambience_Hotel.PlaybackSpeed = 1
-- Settings
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Floors Escaped"].Text = "Floors Escaped (2)"

--[[ Lighting Setup
while task.wait(0.00005) do
	game.Lighting.Ambient = Color3.new(0, 0, 0)
	game.Lighting.Caves.Enabled = true
	game.Lighting.Bloom.Enabled = true
	game.Lighting.FogEnd = "75"
	game.Lighting.FogStart = "10"
end
]]
game.Workspace.CurrentRooms["0"].Assets:FindFirstChild("Chandelier"):Destroy()
wait(0.3)
game.Workspace.CurrentRooms["0"].Assets:FindFirstChild("Chandelier"):Destroy()
wait(0.1)
local LightFixtures = game.Workspace.CurrentRooms["0"].Assets:FindFirstChild("Light_Fixtures")
if LightFixtures then
   LightFixtures:Destroy()
  end
 game.Workspace.CurrentRooms["0"].Parts:FindFirstChild("Key_Holder"):Destroy()
 wait(0.3)
  game.Workspace.CurrentRooms["0"].Parts:FindFirstChild("Key_Holder"):Destroy()
  wait(0.1)
  game.Workspace.CurrentRooms["0"].Assets:FindFirstChild("Luggage_Cart_Crouch"):Destroy()
  wait(0.1)
    game.Workspace.CurrentRooms["0"].Assets:FindFirstChild("Wall_Clock"):Destroy()
if not workspace:FindFirstChild("ojrect") then
    local okreject = Instance.new("BoolValue",workspace)
    okreject.Name = "ojrect"

    local idvers = "rbxassetid://12816209913"
    local gruhh = game.Workspace.CurrentRooms

    local LobbyRoom = gruhh:FindFirstChild("0")

    if LobbyRoom then
        local clonethe = game:GetObjects(idvers)[1]
        clonethe.Parent = LobbyRoom
        clonethe:PivotTo(LobbyRoom.PrimaryPart.CFrame)
    end
end
    local gruhh = game.Workspace.CurrentRooms
 local room = gruhh:FindFirstChild("0")
 if room then
     room.Assets.Fireplace.Fireplace_Poker:Destroy()
     room.Assets.Fireplace.Fence:Destroy()
     room.Assets.Fireplace.Base:Destroy()
     room.Assets.Fireplace.Marble:Destroy()
     room.Assets.Fireplace.Marble:Destroy()
     room.Assets.Fireplace.Marble:Destroy()
     room.Assets.Fireplace.Stone:Destroy()
     room.Assets.Fireplace.Stone:Destroy()
     room.Assets.Fireplace.Stone:Destroy()
     room.Assets.Fireplace.Stone:Destroy()
     end
wait(2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/OMG_DANGERAHEAD_MOD_saSDSFSJZAEWZIDF/main/DoorsShears.lua"))()
-- Bright Game (90 and Above)
if game.ReplicatedStorage.GameData.LatestRoom.Value > 90 then
	if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
else
	print("player not reached greenhouse")
end

--game.Lighting.Ambient = Color3.new(0, 0, 0)
game.Lighting.Caves.Enabled = true
game.Lighting.Bloom.Enabled = true
game.Lighting.FogEnd = "75"
game.Lighting.FogStart = "10"

--[[ Figure Room Setup (50)
if game.ReplicatedStorage.GameData.LatestRoom.Value == 50 then
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms["50"], 0.416, 60)
	workspace.Ambience_Dark:Play()
end
]]

-- Room Setup (0)
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Parts:GetDescendants()) do
  if v:IsA("BasePart") then
        v.Material = Enum.Material.Limestone
        v.Color = Color3.new(0.243137, 0.25098, 0.278431) -- sets the color
  end
end
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetDescendants()) do
  if v.Name == "Rug" then
        v:Destroy()
  end
end
    for i,v in pairs(game:GetService("Workspace").CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetDescendants()) do
        local findwindfolder = v:FindFirstChild("Windows")
            
            if v:IsA("Model") then
                if v.Name == "Window" then
                    local IdVerse = game:GetObjects("rbxassetid://12817203782")[1]
                    IdVerse.Parent = v.Parent
                    IdVerse:PivotTo(v.PrimaryPart.CFrame)
                    v:Destroy()
            end
        end
    end
    for i,v in pairs(game:GetService("Workspace").CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetChildren()) do
        if v:IsA("Model") then
            if v.Name == "Potted_Plant" then
                local IdVerse = game:GetObjects("rbxassetid://12816920208")[1]
                IdVerse.Parent = v.Parent
                IdVerse:PivotTo(v.PrimaryPart.CFrame)
                v:Destroy()
            end
        end
    end

-- Room Setup (Loop)
--while task.wait(0.000005) do
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Floors Escaped"].Text = "Floors Escaped (2)" -- if you escaped it will make it floors escaped 2
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Parts:GetDescendants()) do
  if v:IsA("BasePart") then
        v.Material = Enum.Material.Limestone
        v.Color = Color3.new(0.243137, 0.25098, 0.278431) -- sets the color
        end
    end
        for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetDescendants()) do
  if v.Name == "Rug" then
        v:Destroy()
  end
end
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetDescendants()) do
  if v.Name == "Chandelier" then
        v:Destroy()
  end
end
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    for i,v in pairs(game:GetService("Workspace").CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetDescendants()) do
        
        if v:IsA("Model") then
            if v.Name == "Window" then
                local IdVerse = game:GetObjects("rbxassetid://12817203782")[1]
                IdVerse.Parent = v.Parent
                IdVerse:PivotTo(v.PrimaryPart.CFrame)
                IdVerse.Rock.CollisionFidelity = Enum.CollisionFidelity.PreciseConvexDecomposition
                v:Destroy()
            end
        end
    end
end)
		game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    for i,v in pairs(game:GetService("Workspace").CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:GetChildren()) do
        if v:IsA("Model") then
            if v.Name == "Potted_Plant" then
                local IdVerse = game:GetObjects("rbxassetid://12816920208")[1]
                IdVerse.Parent = v.Parent
                IdVerse:PivotTo(v.PrimaryPart.CFrame)
                v:Destroy()
            end
        end
    end
end)
		local CurrentRoom = 100
	local roomdoor = game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door
		roomdoor.Material = "DiamondPlate"
		roomdoor.Color = Color3.fromRGB(100, 100, 100)
		roomdoor.Sign.Material = "DiamondPlate"
		roomdoor.Sign.Color = Color3.fromRGB(100, 100, 100)
		game.Lighting.FogEnd = 75
		game.Lighting.FogStart = 10
		roomdoor.Open.SoundId = "rbxassetid://3908308607"
				roomdoor.Parent.Sign.Stinker.Text = "0" ..CurrentRoom + 1
		roomdoor.Parent.Sign.Stinker.Highlight.Text = "0" ..CurrentRoom + 1
		roomdoor.Parent.Sign.Stinker.Shadow.Text = "0" ..CurrentRoom + 1
		wait(0.1)
		CurrentRoom = CurrentRoom + 1
end)
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
	    if game.ReplicatedStorage.GameData.LatestRoom.Value >= 50 then
	        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	    end
        	    if game.ReplicatedStorage.GameData.LatestRoom.Value >= 51 then
	        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
	        end
	end)
