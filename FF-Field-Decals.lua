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

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
if key == "v" then
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
endZone1Grass.BrickColor = BrickColor.new (Color3.fromHex("#134583"))
endZoneOneDecal.Face = 1
endZoneOneDecal.Texture = "rbxassetid://8380312876"



-- TEAM Two ENDZONE COLOR + LOGO
endZone2Grass.BrickColor = BrickColor.new (Color3.fromHex("#000000"))
endZoneTwoDecal.Face = 1
endZoneTwoDecal.Texture = "rbxassetid://8380329001"



middleLogo.Image = "rbxassetid://8239335401"
middleLogo.ImageTransparency = 0


fieldLogoPart1.Position = Vector3.new(62, 3.107, -74.6)
fieldLogoPart1.Anchored = true
fieldLogoPart1.Size = Vector3.new(22, 0.114, 19)
fieldLogoPart1.Rotation = Vector3.new(0, -90, 0)
fieldLogoPart1.Transparency = 1
fieldLogoDecal1.Face = 1
fieldLogoDecal1.Texture = "rbxassetid://8239467535"


fieldLogoPart2.Position = Vector3.new(62, 3.107, 75)
fieldLogoPart2.Anchored = true
fieldLogoPart2.Size = Vector3.new(22, 0.114, 19)
fieldLogoPart2.Rotation = Vector3.new(0, -90, 0)
fieldLogoPart2.Transparency = 1
fieldLogoDecal2.Face = 1
fieldLogoDecal2.Texture = "rbxassetid://8239467535"
