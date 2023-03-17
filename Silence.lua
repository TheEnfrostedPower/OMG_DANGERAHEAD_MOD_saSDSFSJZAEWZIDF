
local ChosenRoom = game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local CanKill = false


local function GrabGithubNoises(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local function GrabGithubModel(ModelUrl,ModelName)
	if not isfile(ModelName..".txt") then writefile(ModelName..".txt", game:HttpGet(ModelUrl)) end
	local a=game:GetObjects((getcustomasset or getsynasset)(ModelName..".txt"))[1]
	a.Name=ModelName
	return a
end


local Createor = game:GetObjects("rbxassetid://12815710523")[1]
Createor.Parent = workspace
local entity = Createor.RushNew
entity.CFrame = ChosenRoom.RoomEntrance.CFrame * CFrame.new(0,-1,-10)
entity.Anchored = true

local InitiateSound = GrabGithubNoises("https://github.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/blob/main/BlinkInit.mp3?raw=true","BlinkInit")
InitiateSound.Parent = entity
InitiateSound.RollOffMaxDistance = 600
InitiateSound.RollOffMinDistance = 5
InitiateSound.RollOffMode = Enum.RollOffMode.Linear
InitiateSound.Volume = 2
InitiateSound:Play()

task.wait(1)



--CanKill = true
local killed = false

spawn(function()
	while true do
		--if CanKill == true then

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
					--if target.Parent:FindFirstChildOfClass("Humanoid").MoveDirection ~= Vector3.new(0,0,0) then
					killed = true
					return true 
					--end
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
				if v.Character ~= nil and not v.Character:GetAttribute("Hiding") and CanKill == true and v.Character:FindFirstChildOfClass("Humanoid").MoveDirection ~= Vector3.new(0,0,0) then
					if canSeeTarget(v.Character,90) and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection ~= Vector3.new(0,0,0) then
						--ReboundMoving:Stop()
						--loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/main/Rebound_Jumpscare"))()
						--if v.Character:FindFirstChildOfClass("Humanoid").MoveDirection ~= Vector3.new(0,0,0) then
						game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Silence"
						game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):TakeDamage(35)
						--killed = true
						firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Silence","He doesn't like noise..","Do not move when he's active."}, "Blue")
						for i,v in pairs(entity:GetDescendants()) do
							if v:IsA("Sound") then
								v:Stop()
							end
						end
						--end
						--loadstring(game:HttpGet('https://github.com/Noonie1/ReboundMain/raw/main/JumpscareLua.lua'))()
					end
				end
			end
		end)


		local IdleSound = GrabGithubNoises("https://github.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/blob/main/BlinkIdle.mp3?raw=true","BlinkIdle")
		IdleSound.Parent = entity
		IdleSound.RollOffMaxDistance = 200
		IdleSound.RollOffMinDistance = 2
		IdleSound.RollOffMode = Enum.RollOffMode.Linear
		IdleSound.Volume = 2.5
		IdleSound:Play()
		IdleSound.Looped = true
		entity.Attachment.close.Enabled = false
		entity.Attachment.open.Enabled = true
		IdleSound.TimePosition = Random.new():NextNumber(0,IdleSound.TimeLength)
		wait(.5)
		CanKill = true
		wait(math.random(1,9))
		CanKill = false
		IdleSound:Destroy()
		wait(.1)
		local BlinkSound = GrabGithubNoises("https://github.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/blob/main/BlinkExpress.mp3?raw=true","BlinkExpressing")
		BlinkSound.Parent = entity
		BlinkSound.RollOffMaxDistance = 400
		BlinkSound.RollOffMinDistance = 5
		BlinkSound.RollOffMode = Enum.RollOffMode.Linear
		BlinkSound.Volume = 5
		BlinkSound:Play()
		entity.Attachment.close.Enabled = true
		entity.Attachment.open.Enabled = false
		wait(math.random(1,7))
		local BlinkSound2 = GrabGithubNoises("https://github.com/TheEnfrostedPower/-eiodcfvkfr-req-iwtg-worfedcrgta-q-rwfafdfqegtKCRMFARFR/blob/main/BlinkExpress.mp3?raw=true","BlinkExpressing")
		BlinkSound2.Parent = entity
		BlinkSound2.RollOffMaxDistance = 400
		BlinkSound2.RollOffMinDistance = 5
		BlinkSound2.RollOffMode = Enum.RollOffMode.Linear
		BlinkSound2.Volume = 5
		BlinkSound2:Play()
		--end
	end
end)

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

entity.CFrame = entity.CFrame * CFrame.new(0,1000,0)

CanKill = false

wait(3)

Createor:Destroy()
