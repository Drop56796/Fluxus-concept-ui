local CoreGui = game:GetService("CoreGui")
local LogService = game:GetService("LogService")
local TweenService = game:GetService("TweenService")

-- Create UI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ToggleButton = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton") -- Changed from TextButton to ImageButton
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local ConsoleToggle = Instance.new("TextButton")
local ConsoleTextBox = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")
local CreditsToggle = Instance.new("TextButton")
local CreditsTextBox = Instance.new("TextBox")

ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 50, 0, 50) -- Start in collapsed state
Frame.Position = UDim2.new(1, -55, 0, 5) -- Start position for collapsed state

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- Image Button setup
ImageButton.Parent = Frame
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Position = UDim2.new(0, 0, 0, 0)
ImageButton.Image = "rbxassetid://13327193518" -- Replace with your AssetID
ImageButton.BackgroundTransparency = 1 -- Transparent background to show only the image

local imageButtonUICorner = Instance.new("UICorner")
imageButtonUICorner.CornerRadius = UDim.new(0, 20)
imageButtonUICorner.Parent = ImageButton

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
CreditsToggle.Parent = CreditsToggle

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
CreditsTextBox.Text = "Credits:\n- Dev: [Drop56796]\n hi user welcome use or back :D"
CreditsTextBox.Visible = false

local CreditsTextBoxUICorner = Instance.new("UICorner")
CreditsTextBoxUICorner.CornerRadius = UDim.new(0, 10)
CreditsTextBoxUICorner.Parent = CreditsTextBox

-- Function to animate UI
local function expandUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 750, 0, 700), Position = UDim2.new(0.5, -375, 0.5, -350)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()
end

local function collapseUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    local goal = {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(1, -55, 0, 5)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()
end

local isExpanded = false

-- Toggle Button Functionality
ToggleButton.MouseButton1Click:Connect(function()
    if isExpanded then
        TextBox.Visible = not TextBox.Visible
        ExecuteButton.Visible = not ExecuteButton.Visible
        ClearButton.Visible = not ClearButton.Visible
    end
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

-- Credits Toggle Button Functionality
CreditsToggle.MouseButton1Click:Connect(function()
    CreditsTextBox.Visible = not CreditsTextBox.Visible
end)

-- Close Button Functionality
CloseButton.MouseButton1Click:Connect(function()
    if isExpanded then
        CloseButton.Visible = false
        CloseButton.Active = false
        ImageButton.Active = true -- Enable the image button to be clicked
        TextBox.Visible = false
        ExecuteButton.Visible = false
        ClearButton.Visible = false
        ConsoleTextBox.Visible = false
        CreditsTextBox.Visible = false
    else
        expandUI()
        isExpanded = true
        ToggleButton.Visible = true
        ConsoleToggle.Visible = true
        CreditsToggle.Visible = true
    end
end)

-- Image Button Functionality
ImageButton.MouseButton1Click:Connect(function()
    if not CloseButton.Visible then
        CloseButton.Visible = true
        CloseButton.Active = true
        ImageButton.Active = false -- Disable the image button to prevent further clicks
    end
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
