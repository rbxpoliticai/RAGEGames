local tweenService = game:GetService("TweenService")

local screengui = Instance.new("ScreenGui")
screengui.Parent = game.Players.LocalPlayer.PlayerGui
screengui.IgnoreGuiInset = true

local image = Instance.new("ImageLabel")
image.Image = "rbxassetid://119982437564474"
image.Parent = screengui
image.Size = UDim2.new(0, 150, 0, 150)
image.BackgroundTransparency = 1
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.Position = UDim2.new(0.5, 0, -0.5, 0)
image.ImageTransparency = 1


local tweenInfo = TweenInfo.new(
	2,
	Enum.EasingStyle.Circular,
	Enum.EasingDirection.InOut,
	0,
	false,
	0
)

local tween = tweenService:Create(image, tweenInfo, { Position = UDim2.new(0.5, 0, 0.5, 0), ImageTransparency = 0 })

tween:Play()

task.wait(2)

local tween = tweenService:Create(image, tweenInfo, { Rotation = 360 })

tween:Play()
task.wait(2)

local tween = tweenService:Create(image, tweenInfo, { Position = UDim2.new(0.5, 0, -0.5, 0), ImageTransparency = 1 })

tween:Play()
