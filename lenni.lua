local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local animationGui = Instance.new("ScreenGui")
animationGui.Name = "LenniHubAnimation"
animationGui.ResetOnSpawn = false
animationGui.Parent = PlayerGui


local animateFrame = Instance.new("Frame")
animateFrame.Size = UDim2.new(0, 4, 0, 4)
animateFrame.Position = UDim2.new(0.5, -2, 0.5, -2)
animateFrame.AnchorPoint = Vector2.new(0.5, 0.5)
animateFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
animateFrame.Parent = animationGui
Instance.new("UICorner", animateFrame)


local title = Instance.new("TextLabel")
title.Text = "Lenni Hub"
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.TextTransparency = 1
title.Parent = animateFrame


task.wait(0.2)
animateFrame:TweenSize(UDim2.new(0.3, 0, 0.01, 0), "Out", "Quad", 0.5, true)
task.wait(0.6)

title.TextTransparency = 0 
animateFrame:TweenSize(UDim2.new(0.3, 0, 0.4, 0), "Out", "Quad", 0.5, true)
task.wait(0.6)


for i = 0, 1, 0.05 do
	title.TextTransparency = i
	task.wait(0.02)
end


task.wait(0.2)
animationGui:Destroy()


local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")


local ScreenGuiAll = Instance.new("ScreenGui")
ScreenGuiAll.Name = "CleanUI"
ScreenGuiAll.ResetOnSpawn = false
ScreenGuiAll.Parent = PlayerGui


local FrameAll = Instance.new("Frame")
FrameAll.Size = UDim2.new(0.3, 0, 0.4, 0)
FrameAll.Position = UDim2.new(0.35, 0, 0.3, 0)
FrameAll.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FrameAll.Parent = ScreenGuiAll


local UiCorner = Instance.new("UICorner", FrameAll)
UiCorner.CornerRadius = UDim.new(0.05, 0)


local title = Instance.new("TextLabel")
title.Text = "Utility Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0.15, 0)
title.Parent = FrameAll


local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Size = UDim2.new(1, -20, 0.75, 0)
buttonContainer.Position = UDim2.new(0, 10, 0.2, 0)
buttonContainer.BackgroundTransparency = 1
buttonContainer.BorderSizePixel = 0
buttonContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
buttonContainer.ScrollBarThickness = 6
buttonContainer.Parent = FrameAll


local scrollCorner = Instance.new("UICorner", buttonContainer)
scrollCorner.CornerRadius = UDim.new(0.05, 0)


local layout = Instance.new("UIListLayout", buttonContainer)
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder


local function createTextButton(name, callback)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, 0, 0, 30)
	button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 18
	button.Font = Enum.Font.Gotham
	button.Text = name
	button.Parent = buttonContainer

	local corner = Instance.new("UICorner", button)
	corner.CornerRadius = UDim.new(0.1, 0)

	button.MouseButton1Click:Connect(callback)


	task.wait()
	buttonContainer.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
end


local function onButton1Click()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

local function onButton2Click()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end

local function onButton3Click()
	loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end

local function onButton4Click()
	loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end

local function onButton5Click()
	for i = 1, 10000000 do
		local part = Instance.new("Part")
		part.Parent = workspace
	end
end

local function OnButton6Click()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ex55/weed-client/refs/heads/main/main.lua"))()
end

local function OnButton7Click()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end


createTextButton("Infinite Yield", 0, onButton1Click)
createTextButton("FlingTouch", 1, onButton2Click)
createTextButton("JerkOff R6", 2, onButton3Click)
createTextButton("JerkOff R15", 3, onButton4Click)
createTextButton("Bomb", 4, onButton5Click)
createTextButton("Arsenal" , OnButton6Click)
createTextButton("Dex", OnButton7Click)


local ExitButton = Instance.new("TextButton")
ExitButton.Text = "X"
ExitButton.Size = UDim2.new(0.08, 0, 0.08, 0)
ExitButton.Position = UDim2.new(0.92, 0, 0.02, 0)
ExitButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
ExitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitButton.Font = Enum.Font.GothamBold
ExitButton.TextSize = 16
ExitButton.Parent = FrameAll

Instance.new("UICorner", ExitButton)


local showButton = Instance.new("TextButton")
showButton.Text = "Show UI"
showButton.Size = UDim2.new(0, 100, 0, 40)
showButton.Position = UDim2.new(1, -110, 1, -50)
showButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
showButton.TextColor3 = Color3.fromRGB(255, 255, 255)
showButton.Font = Enum.Font.GothamBold
showButton.TextSize = 18
showButton.Parent = ScreenGuiAll
showButton.Visible = false

Instance.new("UICorner", showButton)


ExitButton.MouseButton1Click:Connect(function()
	FrameAll.Visible = false
	showButton.Visible = true
end)

showButton.MouseButton1Click:Connect(function()
	FrameAll.Visible = true
	showButton.Visible = false
end)



local dragging = false
local dragInput, mousePos, framePos

title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = FrameAll.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

title.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - mousePos
		FrameAll.Position = UDim2.new(
			framePos.X.Scale, framePos.X.Offset + delta.X,
			framePos.Y.Scale, framePos.Y.Offset + delta.Y
		)
	end
end)


local function playCloseAnimation()

	for _, obj in ipairs(FrameAll:GetDescendants()) do
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			obj.TextTransparency = 1
		end
	end


	local clone = FrameAll:Clone()
	clone.Parent = ScreenGuiAll
	clone.ZIndex = 10 
	FrameAll.Visible = false


	clone:TweenSize(UDim2.new(0, 4, 0.01, 0), "Out", "Quad", 0.4, true)
	clone:TweenPosition(UDim2.new(0.5, -2, 0.5, 0), "Out", "Quad", 0.4, true)

	task.wait(0.5)
	clone:Destroy()
	showButton.Visible = true
end

ExitButton.MouseButton1Click:Connect(playCloseAnimation)


showButton.MouseButton1Click:Connect(function()

	for _, obj in ipairs(FrameAll:GetDescendants()) do
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			obj.TextTransparency = 0
		end
	end

	FrameAll.Visible = true
	showButton.Visible = false
end)












