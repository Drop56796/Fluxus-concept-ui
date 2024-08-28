-- Services
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

-- Create UI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local ToggleButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local ConsoleToggle = Instance.new("TextButton")
local ConsoleTextBox = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")
local CreditsToggle = Instance.new("TextButton")
local CreditsTextBox = Instance.new("TextBox")
local SettingsButton = Instance.new("TextButton")  -- Added Settings Button
local ScrollToggle = Instance.new("TextButton")  -- Added Scroll Toggle Button
local SettingsFrame = Instance.new("Frame")  -- Settings Frame
local ScrollButton = Instance.new("TextButton")  -- Scroll Button

ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 50, 0, 50)  -- Initial expanded size
Frame.Position = UDim2.new(0, 5, 0, 5)
-- Position in the top-left corner
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- ImageButton setup
ImageButton.Parent = Frame
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Position = UDim2.new(0, 0, 0, 0)
ImageButton.Image = "rbxassetid://13327193518"  -- Replace with your AssetID
ImageButton.BackgroundTransparency = 1

-- Toggle Button setup
ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.Position = UDim2.new(0, 5, 0, 60)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.Text = "Code Edited"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Visible = false

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
TextBox.MultiLine = true  -- Enable multiline input

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
ConsoleToggle.Visible = false

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
ConsoleTextBox.Text = "Console output will appear here..."

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
CreditsToggle.Visible = false

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
CreditsTextBox.Text = "Credits:\n- Dev: [Drop56796]\n hi user welcome use or back :D"
CreditsTextBox.Visible = false

local CreditsTextBoxUICorner = Instance.new("UICorner")
CreditsTextBoxUICorner.CornerRadius = UDim.new(0, 10)
CreditsTextBoxUICorner.Parent = CreditsTextBox

-- Settings Button setup
SettingsButton.Parent = Frame
SettingsButton.Size = UDim2.new(0, 100, 0, 30)
SettingsButton.Position = UDim2.new(0, 5, 0, 250)
SettingsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.Text = "Settings"
SettingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsButton.Font = Enum.Font.SourceSans
SettingsButton.Visible = true

local SettingsUICorner = Instance.new("UICorner")
SettingsUICorner.CornerRadius = UDim.new(0, 10)
SettingsUICorner.Parent = SettingsButton

-- Scroll Toggle Button setup
ScrollToggle.Parent = Frame
ScrollToggle.Size = UDim2.new(0, 100, 0, 30)
ScrollToggle.Position = UDim2.new(0, 5, 0, 290)
ScrollToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollToggle.Text = "Toggle Scroll"
ScrollToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ScrollToggle.Font = Enum.Font.SourceSans
ScrollToggle.Visible = true

local ScrollToggleUICorner = Instance.new("UICorner")
ScrollToggleUICorner.CornerRadius = UDim.new(0, 10)
ScrollToggleUICorner.Parent = ScrollToggle

-- Settings Frame setup
SettingsFrame.Parent = Frame
SettingsFrame.Size = UDim2.new(0, 200, 0, 200)
SettingsFrame.Position = UDim2.new(0, 110, 0, 50)
SettingsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SettingsFrame.Visible = false

-- Scroll Button setup in Settings
ScrollButton.Parent = SettingsFrame
ScrollButton.Size = UDim2.new(0, 100, 0, 30)
ScrollButton.Position = UDim2.new(0, 50, 0, 50)
ScrollButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollButton.Text = "Toggle Scroll"
ScrollButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScrollButton.Font = Enum.Font.SourceSans

local ScrollButtonUICorner = Instance.new("UICorner")
ScrollButtonUICorner.CornerRadius = UDim.new(0, 10)
ScrollButtonUICorner.Parent = ScrollButton

-- Define animations
local function expandUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(Frame, tweenInfo, {Size = UDim2.new(0, 800, 0, 600)})
    tween:Play()
end

local function collapseUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
    local tween = TweenService:Create(Frame, tweenInfo, {Size = UDim2.new(0, 50, 0, 50)})
    tween:Play()
end

-- UI control logic
ImageButton.MouseButton1Click:Connect(function()
    if Frame.Size == UDim2.new(0, 50, 0, 50) then
        expandUI()
        ToggleButton.Visible = true
        TextBox.Visible = true
        ExecuteButton.Visible = true
        ClearButton.Visible = true
        ConsoleToggle.Visible = true
        CreditsToggle.Visible = true
        SettingsButton.Visible = true
        ScrollToggle.Visible = true
        CloseButton.Visible = true
    else
        collapseUI()
        ToggleButton.Visible = false
        TextBox.Visible = false
        ExecuteButton.Visible = false
        ClearButton.Visible = false
        ConsoleToggle.Visible = false
        CreditsToggle.Visible = false
        SettingsButton.Visible = false
        ScrollToggle.Visible = false
        CloseButton.Visible = false
        SettingsFrame.Visible = false
    end
end)

-- Execute Button logic
ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    if code and code ~= "" then
        local success, result = pcall(function()
            loadstring(code)()
        end)
        if success then
            ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nScript executed successfully."
        else
            ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nFailed to execute script: " .. result
        end
    end
end)

-- Clear Button logic
ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Close Button logic
CloseButton.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

-- Credits Toggle Button logic
CreditsToggle.MouseButton1Click:Connect(function()
    CreditsTextBox.Visible = not CreditsTextBox.Visible
end)

-- Console Toggle Button logic
ConsoleToggle.MouseButton1Click:Connect(function()
    ConsoleTextBox.Visible = not ConsoleTextBox.Visible
end)

-- Scroll Toggle Button logic
ScrollToggle.MouseButton1Click:Connect(function()
    -- Implement scroll behavior here
    if ConsoleTextBox.TextWrapped then
        ConsoleTextBox.TextWrapped = false
    else
        ConsoleTextBox.TextWrapped = true
    end
end)

-- Settings Button logic
SettingsButton.MouseButton1Click:Connect(function()
    SettingsFrame.Visible = not SettingsFrame.Visible
end)

-- Scroll Button logic in Settings Frame
ScrollButton.MouseButton1Click:Connect(function()
    -- Toggle Scroll setting
    if ConsoleTextBox.TextWrapped then
        ConsoleTextBox.TextWrapped = false
    else
        ConsoleTextBox.TextWrapped = true
    end
    
    -- Save settings to file
    local scriptContent = TextBox.Text
    local scriptName = "myScript"  -- Replace with the desired script name
    local config = {
        script_name = scriptName,
        script = scriptContent
    }
    local configJson = HttpService:JSONEncode(config)
    writefile("auto_execute.json", configJson)
end)

-- Define auto execution logic
local function saveAutoExecuteScript(scriptContent)
    local config = {
        script_name = "myScript",  -- Replace with the desired script name
        script = scriptContent
    }
    local configJson = HttpService:JSONEncode(config)
    writefile("auto_execute.json", configJson)
end

local function loadAutoExecuteScript()
    if isfile("auto_execute.json") then
        local configJson = readfile("auto_execute.json")
        local config = HttpService:JSONDecode(configJson)
        return config.script
    end
    return nil
end

local function executeAutoScript()
    local scriptContent = loadAutoExecuteScript()
    if scriptContent then
        local success, result = pcall(function()
            loadstring(scriptContent)()
        end)
        if success then
            ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nScript executed successfully."
        else
            ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nFailed to execute script: " .. result
        end
    else
        ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nNo script found to execute."
    end
end

-- Execute auto script on start
RunService.Heartbeat:Connect(function()
    executeAutoScript()
end)
