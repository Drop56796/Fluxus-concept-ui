local CoreGui = game:GetService("CoreGui")
local LogService = game:GetService("LogService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Create UI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ToggleButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local ConsoleToggle = Instance.new("TextButton")
local ConsoleTextBox = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")

ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 750, 0, 700)
Frame.Position = UDim2.new(0.5, -375, 0.5, -350)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- Image Label setup
ImageLabel.Parent = Frame
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Image = "rbxassetid://13327193518" -- Replace with your AssetID
ImageLabel.BackgroundTransparency = 1

-- Toggle Button setup
ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.Position = UDim2.new(0, 5, 0, 60)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Text = "Code Edited"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.SourceSans

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 10)
ToggleUICorner.Parent = ToggleButton

-- TextBox setup
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0, 600, 1, -10)
TextBox.Position = UDim2.new(0, 110, 0, 5)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Code
TextBox.Text = "Enter code here..."
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.Visible = false

-- Execute Button setup
ExecuteButton.Parent = Frame
ExecuteButton.Size = UDim2.new(0, 100, 0, 30)
ExecuteButton.Position = UDim2.new(0, 110, 1, -35)
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Visible = false

local ExecuteUICorner = Instance.new("UICorner")
ExecuteUICorner.CornerRadius = UDim.new(0, 10)
ExecuteUICorner.Parent = ExecuteButton

-- Clear Button setup
ClearButton.Parent = Frame
ClearButton.Size = UDim2.new(0, 100, 0, 30)
ClearButton.Position = UDim2.new(0, 220, 1, -35)
ClearButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Visible = false

local ClearUICorner = Instance.new("UICorner")
ClearUICorner.CornerRadius = UDim.new(0, 10)
ClearUICorner.Parent = ClearButton

-- Console Toggle Button setup
ConsoleToggle.Parent = Frame
ConsoleToggle.Size = UDim2.new(0, 100, 0, 30)
ConsoleToggle.Position = UDim2.new(0, 5, 0, 100)
ConsoleToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleToggle.Text = "Console"
ConsoleToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleToggle.Font = Enum.Font.SourceSans

local ConsoleToggleUICorner = Instance.new("UICorner")
ConsoleToggleUICorner.CornerRadius = UDim.new(0, 10)
ConsoleToggleUICorner.Parent = ConsoleToggle

-- Console TextBox setup
ConsoleTextBox.Parent = Frame
ConsoleTextBox.Size = UDim2.new(1, -20, 0.4, -10)
ConsoleTextBox.Position = UDim2.new(0, 10, 0, 150)
ConsoleTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ConsoleTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTextBox.Font = Enum.Font.Code
ConsoleTextBox.TextXAlignment = Enum.TextXAlignment.Left
ConsoleTextBox.TextYAlignment = Enum.TextYAlignment.Top
ConsoleTextBox.ClearTextOnFocus = false
ConsoleTextBox.TextEditable = false
ConsoleTextBox.TextWrapped = true
ConsoleTextBox.Visible = false

local ConsoleTextBoxUICorner = Instance.new("UICorner")
ConsoleTextBoxUICorner.CornerRadius = UDim.new(0, 10)
ConsoleTextBoxUICorner.Parent = ConsoleTextBox

-- Close Button setup
CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 20

local CloseUICorner = Instance.new("UICorner")
CloseUICorner.CornerRadius = UDim.new(0, 15)
CloseUICorner.Parent = CloseButton

-- Functions to animate UI
local function expandUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 750, 0, 700), Position = UDim2.new(0.5, -375, 0.5, -350)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()
end

local function collapseUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(1, -55, 0, 5)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()
end

-- Toggle Button Functionality
ToggleButton.MouseButton1Click:Connect(function()
    if Frame.Size == UDim2.new(0, 50, 0, 50) then
        expandUI()
    else
        collapseUI()
    end
    TextBox.Visible = not TextBox.Visible
    ExecuteButton.Visible = not ExecuteButton.Visible
    ClearButton.Visible = not ClearButton.Visible
end)

-- Close Button Functionality
CloseButton.MouseButton1Click:Connect(function()
    collapseUI()
end)

-- Clear Button Functionality
ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Execute Button Functionality
ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text

    -- Custom action logic here
    print("Executing code:")
    print(code)

    local success, errorMsg = pcall(function()
        local func = loadstring(code)
        if func then
            func()
        end
    end)
    
    if not success then
        warn("Error executing code: " .. errorMsg)
    end
end)

-- Console Toggle Button Functionality
ConsoleToggle.MouseButton1Click:Connect(function()
    ConsoleTextBox.Visible = not ConsoleTextBox.Visible
end)

-- Append messages to the console
local function appendToConsole(message, color)
    local currentText = ConsoleTextBox.Text
    ConsoleTextBox.Text = currentText .. message .. "\n"
    ConsoleTextBox.TextColor3 = color
end

-- Capture LogService messages
LogService.MessageOut:Connect(function(message, messageType)
    local color
    if messageType == Enum.MessageType.Info then
        color = Color3.fromRGB(255, 255, 255) -- White
    elseif messageType == Enum.MessageType.Warning then
        color = Color3.fromRGB(255, 255, 0) -- Yellow
    elseif messageType == Enum.MessageType.Error then
        color = Color3.fromRGB(255, 0, 0) -- Red
    end
    appendToConsole("[" .. messageType.Name .. "] " .. message, color)
end)

-- Override the print function
local oldPrint = print
print = function(...)
    local args = {...}
    local message = table.concat(args, " ")
    appendToConsole(message, Color3.fromRGB(255, 255, 255)) -- Default color for print
    oldPrint(...)
end

-- Handle dragging
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
