local endZoneOne = game:GetService("Workspace").Models.Field.Grass.Endzone.One.SurfaceGui.TextLabel
local endZone1Grass = game:GetService("Workspace").Models.Field.Grass.Endzone.One
local endZoneOneDecal = Instance.new("Decal",endZone1Grass)
local endZoneTwo = game:GetService("Workspace").Models.Field.Grass.Endzone.Two.SurfaceGui.TextLabel
local endZone2Grass = game:GetService("Workspace").Models.Field.Grass.Endzone.Two
local endZoneTwoDecal = Instance.new("Decal",endZone2Grass)
local middleLogo = game:GetService("Workspace").Models.Field.Grass.Normal.Mid.SurfaceGui.ImageLabel
local fieldLogoPart1 = Instance.new("Part",game:GetService("Workspace"))
local fieldLogoDecal1 = Instance.new("Decal",fieldLogoPart1)
local fieldLogoPart2 = Instance.new("Part",game:GetService("Workspace"))
local fieldLogoDecal2 = Instance.new("Decal",fieldLogoPart2)


local rspnLogo = Instance.new("MeshPart",fieldLogoPart2)
rspnLogo.Size = Vector3.new(6, 6, 6)
rspnLogo.Position = Vector3.new(0, 28.974, 0)
rspnLogo.Rotation = Vector3.new(0, -90, 0)
rspnLogo.Anchored = true
rspnLogo.MeshId = "rbxassetid://8247020249"
rspnLogo.Transparency = 1
rspnLogo.BrickColor = BrickColor.new (Color3.fromHex("#FFFFFF"))

local rspnLogoRotation = -90

local isLogoOn = false
local isOnFieldSetOn = false

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key2)
if key2 == "v" then
	if (isLogoOn == false) then
		isLogoOn = true
		rspnLogo.Transparency = 0
		repeat
			rspnLogo.Rotation = Vector3.new(0, rspnLogoRotation, 0)
			wait(.01)
			rspnLogoRotation = rspnLogoRotation+1
		until isLogoOn == false
	else
	isLogoOn = false
	rspnLogo.Transparency = 1
		
	end					
end
end)	

endZoneOne.Text = ""
endZoneTwo.Text = ""


-- TEAM ONE ENDZONE COLOR + LOGO
endZone1Grass.BrickColor = BrickColor.new (Color3.fromHex("#0574ea"))
endZoneOneDecal.Face = 1
endZoneOneDecal.Texture = "rbxassetid://8580707336"



-- TEAM Two ENDZONE COLOR + LOGO
endZone2Grass.BrickColor = BrickColor.new (Color3.fromHex("#00aeff"))
endZoneTwoDecal.Face = 1
endZoneTwoDecal.Texture = "rbxassetid://8580712259"



middleLogo.Image = "rbxassetid://8239335401"
middleLogo.ImageTransparency = 0


fieldLogoPart1.Position = Vector3.new(62, 3.107, -74.6)
fieldLogoPart1.Anchored = true
fieldLogoPart1.Size = Vector3.new(22, 0.114, 19)
fieldLogoPart1.Rotation = Vector3.new(0, -90, 0)
fieldLogoPart1.Transparency = 1
fieldLogoDecal1.Face = 1
--fieldLogoDecal1.Texture = "rbxassetid://8239467535"


fieldLogoPart2.Position = Vector3.new(62, 3.107, 75)
fieldLogoPart2.Anchored = true
fieldLogoPart2.Size = Vector3.new(22, 0.114, 19)
fieldLogoPart2.Rotation = Vector3.new(0, -90, 0)
fieldLogoPart2.Transparency = 1
fieldLogoDecal2.Face = 1
--fieldLogoDecal2.Texture = "rbxassetid://8239467535"



-- CHANGE THESE INPUTS
local switch = 1

local mainIdleImage

local mainTeamFirstDown

local mainTeamSecondDown

local mainTeamThirdDown

local mainTeamFourthDown

local mainTeamTouchdown






-- TEAM IDLE IMAGE
local idle1Image = "rbxassetid://8523813944"
local idle2Image = "rbxassetid://8571762280"

-- TEAM FIRST DOWN SPRITESHEET
local team1FirstDown = "rbxassetid://8523871260"
local team2FirstDown = "rbxassetid://8571766728"

local team1SecondDown = "rbxassetid://8523875651"
local team2SecondDown = "rbxassetid://8571772055"

local team1ThirdDown = "rbxassetid://8523880371"
local team2ThirdDown = "rbxassetid://8571775955"

local team1FourthDown = "rbxassetid://8523884386"
local team2FourthDown = "rbxassetid://8571781542"

local team1Touchdown = "rbxassetid://8523888695"
local team2Touchdown = "rbxassetid://8571786674"


mainIdleImage = idle1Image
mainTeamFirstDown = team1FirstDown
mainTeamSecondDown = team1SecondDown
mainTeamThirdDown = team1ThirdDown
mainTeamFourthDown = team1FourthDown
mainTeamTouchdown = team1Touchdown




local oldStatus = "none"
local oldPossPosition = 0
local oldTDText = "none"
repeat wait() until game:IsLoaded()



local parts
local boardPart
local boardPartOne
local boardPartTwo



function playAnimation(tvPart, texture)

	local sizeX
	local sizeY

	local textureInstance = Instance.new("Texture",tvPart)
	textureInstance.Texture = texture
	if (game.Workspace.Models.Stadium.Type.Value == "Medium") then
		sizeX = 136
		sizeY = 41

	end

	if (game.Workspace.Models.Stadium.Type.Value == "Big") then
		sizeX = 161
		sizeY = 33

		textureInstance.Face = 2
	end

	local Frames = 65
	local currentFrame = 1

	local rows = 17
	local columns = 4

	local currentRow, CurrentColumn = 0,0

	local fps = 30

	textureInstance.StudsPerTileU = columns*sizeX
	textureInstance.StudsPerTileV = rows*sizeY


	local firstPartAnimation = true
	while (firstPartAnimation == true) do
		wait (1/fps)

		CurrentColumn = CurrentColumn +1

		if (CurrentColumn > columns) then
			CurrentColumn = 1
			currentRow = currentRow + 1
		end

		if (currentFrame > Frames) then
			firstPartAnimation = false
		end
		textureInstance.OffsetStudsU = sizeX*(CurrentColumn-1)
		textureInstance.OffsetStudsV = sizeY*(currentRow-1)

		currentFrame = currentFrame+1


	end

	wait (2)

	local secondPartAnimation = true
	while (secondPartAnimation == true) do
		wait (1/fps)

		CurrentColumn = CurrentColumn -1

		print(CurrentColumn)
		if (CurrentColumn < 1) then
			CurrentColumn = 4
			currentRow = currentRow -1
		end
		print(CurrentColumn)

		if (currentFrame < 1) then
			secondPartAnimation = false
			textureInstance:Destroy()
		else
			textureInstance.OffsetStudsU = sizeX*(CurrentColumn-1)
			textureInstance.OffsetStudsV = sizeY*(currentRow-1)

			currentFrame = currentFrame-1

		end

	end
end


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)

	print("test")
	if key == "j" then
		print("test")
		if (switch == 1) then
			switch = 2

			mainIdleImage = idle2Image
			mainTeamFirstDown = team2FirstDown
			mainTeamSecondDown = team2SecondDown
			mainTeamThirdDown = team2ThirdDown
			mainTeamFourthDown = team2FourthDown
			mainTeamTouchdown = team2Touchdown
			if (game.Workspace.Models.Stadium.Type.Value == "Medium") then
				boardPart:FindFirstChild("TexturePart").Texture = mainIdleImage
			end
			if (game.Workspace.Models.Stadium.Type.Value == "Big") then
				boardPartOne:FindFirstChild("TexturePart").Texture = mainIdleImage
				boardPartTwo:FindFirstChild("TexturePart").Texture = mainIdleImage
			end
		else

			switch = 1
			mainIdleImage = idle1Image
			mainTeamFirstDown = team1FirstDown
			mainTeamSecondDown = team1SecondDown
			mainTeamThirdDown = team1ThirdDown
			mainTeamFourthDown = team1FourthDown
			mainTeamTouchdown = team1Touchdown

			if (game.Workspace.Models.Stadium.Type.Value == "Medium") then
				boardPart:FindFirstChild("TexturePart").Texture = mainIdleImage
				print(boardPart:GetChildren())
			end
			if (game.Workspace.Models.Stadium.Type.Value == "Big") then
				boardPartOne:FindFirstChild("TexturePart").Texture = mainIdleImage
				boardPartTwo:FindFirstChild("TexturePart").Texture = mainIdleImage
				print(boardPartOne:GetChildren())
			end
		end
	end

end)





local firstPartAnimation = false
local secondPartAnimation = false


if (game.Workspace.Models.Stadium.Type.Value == "Medium") then
	parts = game.Workspace.Models.Stadium.TVscreen.Side2:GetChildren()

	for i, part in pairs(parts) do
		if part.Name == "Board" then
			print(part.Size)
			if (Vector3.new(math.floor(part.Size.X), math.floor(part.Size.Y), math.floor(part.Size.Z)) == Vector3.new(136, 41, 0)) then
				print(part.Size)
				print("found")
				boardPart = part
			end
		end
	end

	local idleTextureInstance = Instance.new("Decal",boardPart)
	idleTextureInstance.Texture = mainIdleImage
	idleTextureInstance.Name = "TexturePart"
end

if (game.Workspace.Models.Stadium.Type.Value == "Big") then	
	parts = game.Workspace.Models.Stadium.LooseCrap:GetChildren()

	boardPart = {}
	for i, part in pairs(parts) do
		print(part.Position)
		if (Vector3.new(math.floor(part.Size.X), math.floor(part.Size.Y), math.floor(part.Size.Z)) == Vector3.new(161, 33, 0)) then
			if (part.Position == Vector3.new(-6.673828125, 67.404991149902, -330.58770751953)) then
				print(part.Size)
				print("found")
				boardPartOne = part
			end
			if (part.Position == Vector3.new(10.4267578125, 67.404991149902, 330.41256713867)) then
				print(part.Size)
				print("found")
				boardPartTwo = part
			end
		end
	end
	local idleTextureInstance = Instance.new("Decal",boardPartOne)
	idleTextureInstance.Texture = mainIdleImage
	idleTextureInstance.Face = 2
	idleTextureInstance.Name = "TexturePart"

	local idleTextureInstance2 = Instance.new("Decal",boardPartTwo)
	idleTextureInstance2.Texture = mainIdleImage
	idleTextureInstance2.Face = 2
	idleTextureInstance2.Name = "TexturePart"

end

wait(2)




function initializeAnimation(animationImage)
	if (game.Workspace.Models.Stadium.Type.Value == "Big") then
		if (game:GetService("Workspace").LineDown.Position.Z > game:GetService("Workspace").LineTogo.Position.Z) then
			playAnimation(boardPartOne, animationImage)
		else
			playAnimation(boardPartTwo, animationImage)
		end
	end
	if (game.Workspace.Models.Stadium.Type.Value == "Medium") then
		playAnimation(boardPart, animationImage)
	end
end

local timerInt = 0
while wait(1) do
	if (game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Message.Text ~= oldTDText) then
		oldTDText = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Message.Text
		if (string.find(oldTDText, "Touchdown!")) then
			initializeAnimation(mainTeamTouchdown)
		end
	end
	if (timerInt >= 3) then
		timerInt = 0
		if (game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Scoreboard.Status.Text ~= oldStatus) then
			oldStatus = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Scoreboard.Status.Text
			oldPossPosition = game:GetService("Workspace").LineDown.Position.Z

			x = string.sub(oldStatus,1,3)
			if (x == "1st") then
				initializeAnimation(mainTeamFirstDown)
			end

			if (x == "2nd") then
				initializeAnimation(mainTeamSecondDown)
			end

			if (x == "3rd") then
				initializeAnimation(mainTeamThirdDown)
			end

			if (x == "4th") then
				initializeAnimation(mainTeamFourthDown)
			end

		else if (game:GetService("Workspace").LineDown.Position.Z ~= oldPossPosition) then
				oldPossPosition = game:GetService("Workspace").LineDown.Position.Z
				oldStatus = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Scoreboard.Status.Text
				x = string.sub(oldStatus,1,3)

				if (x == "1st") then
					initializeAnimation(mainTeamFirstDown)
				end

				if (x == "2nd") then
					initializeAnimation(mainTeamSecondDown)
				end

				if (x == "3rd") then
					initializeAnimation(mainTeamThirdDown)
				end

				if (x == "4th") then
					initializeAnimation(mainTeamFourthDown)
				end
			end
		end	
	else
		timerInt = timerInt+1
	end
end
