local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camera = workspace.CurrentCamera
local WhatRoomIn

local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
	camera.CFrame = camera.CFrame * cf
end)
camShake:Start()
local killed = false
local function Move()
	local val = 80
	local Reboundspeed = 1
	local ReboundDelay = 1
	local storer = Reboundspeed
	local entityheight = Vector3.new(0,2,0)

	local s= game:GetObjects("rbxassetid://12843467789")[1]
	s.Parent = workspace
	local entity = s.RushNew
	entity.CanCollide = false

	function GetGitSound(GithubSnd,SoundName)
		local url=GithubSnd
		if not isfile(SoundName..".mp3") then
			writefile(SoundName..".mp3", game:HttpGet(url))
		end
		local sound=Instance.new("Sound")
		sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
		return sound
	end
	---------------------MOVEMENTS
	local gruh = workspace.CurrentRooms
	--for i = 1,6 do
	
	local function canSeeTarget(target,size)
		if killed == true then
			return
		end
		local origin = entity.Position
		local direction = (target.HumanoidRootPart.Position - entity.Position).unit * size
		local ray = Ray.new(origin, direction)

		local hit, pos = workspace:FindPartOnRay(ray, entity)


		if hit then
			if hit:IsDescendantOf(target) then
				killed = true
				return true
			end
		else
			return false
		end
	end
	-------------------------
	spawn(function()
		while entity ~= nil do wait(0.5)
			local v = game.Players.LocalPlayer
			local parent = script.Parent
			if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then
				if canSeeTarget(v.Character,70) then
					--ReboundMoving:Stop()
					--loadstring(game:HttpGet("https://raw.githubusercontent.com/XTRINT0/EntityLoads/main/MatcherScream"))()
					game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Consume"
					wait(.5)
					game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):TakeDamage(80)
					firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You were hit by Consume","You cannot stay out of sight, Hide in a Hiding spot like a Closet or Bed!","Remember, He know's where you are at! at all times."},"Blue")
					for i,v in pairs(entity:GetDescendants()) do
						if v:IsA("Sound") then
							v:Stop()
						end
					end
					--loadstring(game:HttpGet('https://github.com/Noonie1/ReboundMain/raw/main/JumpscareLua.lua'))()
				end
			end
			if v.Character ~= nil then
				if v.Character:FindFirstChild("HumanoidRootPart") and (entity.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <= val	 then
					camShake:ShakeOnce(1,18,0.1,2,1,9)
				end
			end
		end
	end)
	

	entity.Anchored = true
	for i = 1,5 do
		for i = 0,game.ReplicatedStorage.GameData.LatestRoom.Value+1 do
			if gruh:FindFirstChild(i) then
				print("room "..i)
				local room = gruh[i]
				WhatRoomIn = tonumber(room.Name)
				--if room:FindFirstChild("Nodes") then
				local RoomStart = room:FindFirstChild("RoomEntrance")
				local RoomEnd = room:FindFirstChild("RoomExit")
				if RoomEnd then
					Reboundspeed = storer
					WhatRoomIn = tonumber(room.Name)
					if game.Players.LocalPlayer:GetAttribute("CurrentRoom") ~= WhatRoomIn then
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomStart.CFrame + entityheight}):Play()
						wait(ReboundDelay)
					else
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomStart.CFrame + entityheight}):Play()
						wait(ReboundDelay)
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame}):Play()
						wait(ReboundDelay)
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomEnd.CFrame + entityheight}):Play()
						wait(ReboundDelay)
					end
				end
				--end
			end
			print("looping")
		end
		for i = game.ReplicatedStorage.GameData.LatestRoom.Value+1,0,-1 do
			if gruh:FindFirstChild(i) then
				print("room "..i)
				local room = gruh[i]
				WhatRoomIn = tonumber(room.Name)
				--if room:FindFirstChild("Nodes") then
				local RoomStart = room:FindFirstChild("RoomEntrance")
				local RoomEnd = room:FindFirstChild("RoomExit")
				if RoomEnd then
					Reboundspeed = storer
					WhatRoomIn = tonumber(room.Name)
					if game.Players.LocalPlayer:GetAttribute("CurrentRoom") ~= WhatRoomIn then
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomStart.CFrame + entityheight}):Play()
						wait(ReboundDelay)
					else
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomEnd.CFrame + entityheight}):Play()
						wait(ReboundDelay)
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame}):Play()
						wait(ReboundDelay)
						game.TweenService:Create(entity,TweenInfo.new(Reboundspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = RoomStart.CFrame + entityheight}):Play()
						wait(ReboundDelay)
					end
				end
				--end
			end
			print("looping")
		end
	end
	--end

	entity.Anchored = false
end

--local GetAll = workspace.CurrentRooms:GetChildren()

function KernelMove()
	if workspace.Ambience_Seek.Playing == false and workspace.Ambience_Figure.Playing == false then
		Move()
	end
end

KernelMove()
