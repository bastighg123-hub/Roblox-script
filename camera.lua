local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Size = UDim2.fromOffset(120, 50)
button.Position = UDim2.new(0.5, -60, 0.8, 0)
button.Text = "Camera"
button.Parent = gui

local firstPerson = true

button.Activated:Connect(function()
	firstPerson = not firstPerson

	if firstPerson then
		player.CameraMode = Enum.CameraMode.LockFirstPerson
	else
		player.CameraMode = Enum.CameraMode.Classic
	end
end)

button.Active = true
button.Draggable = true
