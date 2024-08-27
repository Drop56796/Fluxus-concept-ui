local CoreGui = game:GetService("CoreGui")
local LogService = game:GetService("LogService")
local TweenService = game:GetService("TweenService")

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
local ConsoleFrame = Instance.new("Frame")
local ConsoleTextBox = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")
local CreditsToggle = Instance.new("TextButton")
local CreditsTextBox = Instance.new("TextBox")
local v = 1
ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 750, 0, 700)
Frame.Position = UDim2.new(0.5, -375, 0.5, -350)
Frame.Visible = false

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- Image Label setup
ImageLabel.Parent = ScreenGui
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Position = UDim2.new(1, -55, 0, 5)
ImageLabel.Image = "rbxassetid://13327193518" -- Replace with your AssetID
ImageLabel.BackgroundTransparency = 1
ImageLabel.Visible = true

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

-- Console Frame setup
ConsoleFrame.Parent = Frame
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ConsoleFrame.Size = UDim2.new(0, 250, 1, -10)
ConsoleFrame.Position = UDim2.new(0, 5, 0, 5)

local ConsoleFrameUICorner = Instance.new("UICorner")
ConsoleFrameUICorner.CornerRadius = UDim.new(0, 10)
ConsoleFrameUICorner.Parent = ConsoleFrame

-- Console TextBox setup
ConsoleTextBox.Parent = ConsoleFrame
ConsoleTextBox.Size = UDim2.new(1, -10, 1, -10)
ConsoleTextBox.Position = UDim2.new(0, 5, 0, 5)
ConsoleTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ConsoleTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleTextBox.Font = Enum.Font.Code
ConsoleTextBox.TextXAlignment = Enum.TextXAlignment.Left
ConsoleTextBox.TextYAlignment = Enum.TextYAlignment.Top
ConsoleTextBox.ClearTextOnFocus = false
ConsoleTextBox.TextEditable = false
ConsoleTextBox.TextWrapped = true

-- Close Button setup
CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextSize = 20
CloseButton.Visible = false

local CloseUICorner = Instance.new("UICorner")
CloseUICorner.CornerRadius = UDim.new(0, 15)
CloseUICorner.Parent = CloseButton

-- Credits Toggle Button setup
CreditsToggle.Parent = Frame
CreditsToggle.Size = UDim2.new(0, 100, 0, 30)
CreditsToggle.Position = UDim2.new(0, 5, 0, 150)
CreditsToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CreditsToggle.Text = "Credits"
CreditsToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsToggle.Font = Enum.Font.SourceSans

local CreditsToggleUICorner = Instance.new("UICorner")
CreditsToggleUICorner.CornerRadius = UDim.new(0, 10)
CreditsToggleUICorner.Parent = CreditsToggle

-- Credits TextBox setup
CreditsTextBox.Parent = Frame
CreditsTextBox.Size = UDim2.new(1, -20, 0.4, -10)
CreditsTextBox.Position = UDim2.new(0, 10, 0, 150)
CreditsTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CreditsTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsTextBox.Font = Enum.Font.Code
CreditsTextBox.TextXAlignment = Enum.TextXAlignment.Left
CreditsTextBox.TextYAlignment = Enum.TextYAlignment.Top
CreditsTextBox.ClearTextOnFocus = false
CreditsTextBox.TextEditable = false
CreditsTextBox.TextWrapped = true
CreditsTextBox.Text = "Credits:\n- Developer: [Drop56796]\n- Version :" .. v
CreditsTextBox.Visible = false

local CreditsTextBoxUICorner = Instance.new("UICorner")
CreditsTextBoxUICorner.CornerRadius = UDim.new(0, 10)
CreditsTextBoxUICorner.Parent = CreditsTextBox

-- Function to animate UI
local function expandUI()
    Frame.Visible = true
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
    tween.Completed:Connect(function()
        Frame.Visible = false
        ImageLabel.Visible = true
    end)
end

-- Toggle Button Functionality
ToggleButton.MouseButton1Click:Connect(function()
    if Frame.Visible then
        collapseUI()
    else
        expandUI()
        ImageLabel.Visible = false
    end
end)

-- Console Toggle Button Functionality
ConsoleToggle.MouseButton1Click:Connect(function()
    ConsoleFrame.Visible = not ConsoleFrame.Visible
end)

-- Clear Console TextBox
ClearButton.MouseButton1Click:Connect(function()
    ConsoleTextBox.Text = ""
end)

-- Close Button Functionality
CloseButton.MouseButton1Click:Connect(function()
    collapseUI()
    ImageLabel.Visible = true
end)

-- ImageLabel Functionality
ImageLabel.MouseButton1Click:Connect(function()
    expandUI()
end)

-- Credits Toggle Button Functionality
CreditsToggle.MouseButton1Click:Connect(function()
    CreditsTextBox.Visible = not CreditsTextBox.Visible
end)

-- Output Function for Console
local function outputToConsole(message)
    ConsoleTextBox.Text = ConsoleTextBox.Text .. message .. "\n"
end

-- Example usage
local function onLogAdded(message, messageType)
    local formattedMessage = "[" .. messageType.Name .. "] " .. message
    outputToConsole(formattedMessage)
end

LogService.MessageOut:Connect(onLogAdded)
