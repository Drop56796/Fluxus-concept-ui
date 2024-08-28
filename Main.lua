-- Services
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

-- Create UI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ToggleButton = Instance.new("ImageButton")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local ConsoleToggle = Instance.new("TextButton")
local ConsoleTextBox = Instance.new("TextBox")
local CreditsToggle = Instance.new("TextButton")
local CreditsTextBox = Instance.new("TextBox")
local SaveButton = Instance.new("TextButton")

ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 50, 0, 50)  -- Initial collapsed size
Frame.Position = UDim2.new(0, 5, 0, 5)  -- Initial position
Frame.Visible = true

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- Toggle Button setup
ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0, 0, 0, 0)
ToggleButton.Image = "rbxassetid://13327193518"  -- Replace with your AssetID
ToggleButton.BackgroundTransparency = 1

-- TextBox setup
TextBox.Parent = Frame
TextBox.Size = UDim2.new(1, -20, 0.7, -10)
TextBox.Position = UDim2.new(0, 10, 0, 10)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Code
TextBox.Text = "Enter code here..."
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.Visible = false
TextBox.MultiLine = true  -- Allow multiline input

-- Execute Button setup
ExecuteButton.Parent = Frame
ExecuteButton.Size = UDim2.new(0, 100, 0, 30)
ExecuteButton.Position = UDim2.new(0, 10, 0.8, -35)
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
ClearButton.Position = UDim2.new(0, 120, 0.8, -35)
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
ConsoleToggle.Position = UDim2.new(0, 10, 0.8, -70)
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
ConsoleTextBox.Position = UDim2.new(0, 10, 0.4, 10)
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

-- Credits Toggle Button setup
CreditsToggle.Parent = Frame
CreditsToggle.Size = UDim2.new(0, 100, 0, 30)
CreditsToggle.Position = UDim2.new(0, 10, 0.8, -105)
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
CreditsTextBox.Position = UDim2.new(0, 10, 0.4, 10)
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

-- Save Button setup
SaveButton.Parent = Frame
SaveButton.Size = UDim2.new(0, 100, 0, 30)
SaveButton.Position = UDim2.new(0, 10, 0.8, -140)
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.Text = "Save"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.Font = Enum.Font.SourceSans
SaveButton.Visible = false

local SaveUICorner = Instance.new("UICorner")
SaveUICorner.CornerRadius = UDim.new(0, 10)
SaveUICorner.Parent = SaveButton

-- Animation functions
local function expandUI()
    local goalSize = UDim2.new(0, 950, 0, 825)
    local goalPosition = UDim2.new(0, 5, 0, 5)  -- Center position
    local tweenFrame = TweenService:Create(Frame, TweenInfo.new(0.5), {Size = goalSize, Position = goalPosition})
    local tweenToggleButton = TweenService:Create(ToggleButton, TweenInfo.new(0.5), {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(0, 0, 0, 0)})

    tweenFrame:Play()
    tweenToggleButton:Play()

    tweenFrame.Completed:Connect(function()
        ToggleButton.Visible = true
        TextBox.Visible = true
        ExecuteButton.Visible = true
        ClearButton.Visible = true
        ConsoleToggle.Visible = true
        CreditsToggle.Visible = true
        SaveButton.Visible = true
    end)
end

local function collapseUI()
    local goalSize = UDim2.new(0, 50, 0, 50)
    local goalPosition = UDim2.new(0, 5, 0, 5)  -- Original position
    local tweenFrame = TweenService:Create(Frame, TweenInfo.new(0.5), {Size = goalSize, Position = goalPosition})
    local tweenToggleButton = TweenService:Create(ToggleButton, TweenInfo.new(0.5), {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(0, 0, 0, 0)})

    tweenFrame:Play()
    tweenToggleButton:Play()

    tweenFrame.Completed:Connect(function()
        ToggleButton.Visible = true
        TextBox.Visible = false
        ExecuteButton.Visible = false
        ClearButton.Visible = false
        ConsoleToggle.Visible = false
        CreditsToggle.Visible = false
        SaveButton.Visible = false
    end)
end

-- Toggle button functionality
ToggleButton.MouseButton1Click:Connect(function()
    if Frame.Size == UDim2.new(0, 50, 0, 50) then
        expandUI()
    else
        collapseUI()
    end
end)

-- Execute button functionality
ExecuteButton.MouseButton1Click:Connect(function()
    local scriptContent = TextBox.Text
    local success, result = pcall(function()
        loadstring(scriptContent)()
    end)
    if not success then
        ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nError: " .. result
    else
        ConsoleTextBox.Text = ConsoleTextBox.Text .. "\nSuccess"
    end
end)

-- Clear button functionality
ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Console toggle functionality
ConsoleToggle.MouseButton1Click:Connect(function()
    ConsoleTextBox.Visible = not ConsoleTextBox.Visible
end)

-- Credits toggle functionality
CreditsToggle.MouseButton1Click:Connect(function()
    CreditsTextBox.Visible = not CreditsTextBox.Visible
end)

-- Save button functionality
SaveButton.MouseButton1Click:Connect(function()
    local scriptContent = TextBox.Text
    local fileName = "script.json"
    local scriptData = {
        script_name = "script",
        script = scriptContent
    }
    writefile(fileName, HttpService:JSONEncode(scriptData))
end)

-- Load and execute script on start
local function executeSavedScript()
    local fileName = "script.json"
    if isfile(fileName) then
        local scriptData = HttpService:JSONDecode(readfile(fileName))
        local scriptContent = scriptData.script
        if scriptContent then
            loadstring(scriptContent)()
        end
    end
end

-- Execute saved script on script start
executeSavedScript()
