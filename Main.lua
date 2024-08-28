-- Services
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

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
local SaveButton = Instance.new("TextButton")  -- 新增的保存按钮

ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

-- Main Frame setup
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 50, 0, 50)  -- Initial collapsed size
Frame.Position = UDim2.new(0, 5, 0, 5)

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
TextBox.MultiLine = true  -- 允许多行输入

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

-- 保存按钮设置
SaveButton.Parent = Frame
SaveButton.Size = UDim2.new(0, 100, 0, 30)
SaveButton.Position = UDim2.new(0, 330, 1, -35)
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.Text = "Save"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.Font = Enum.Font.SourceSans
SaveButton.Visible = false

local SaveUICorner = Instance.new("UICorner")
SaveUICorner.CornerRadius = UDim.new(0, 10)
SaveUICorner.Parent = SaveButton

-- Functions for UI
local function expandUI()
    local goalSize = UDim2.new(0, 600, 0, 500)  -- Expanded size
    local tween = TweenService:Create(Frame, TweenInfo.new(0.5), {Size = goalSize})
    tween:Play()
    
    tween.Completed:Connect(function()
        ToggleButton.Visible = true
        TextBox.Visible = true
        ExecuteButton.Visible = true
        ClearButton.Visible = true
        ConsoleToggle.Visible = true
        CreditsToggle.Visible = true
        SaveButton.Visible = true
        CloseButton.Visible = true
    end)
end

local function collapseUI()
    local goalSize = UDim2.new(0, 50, 0, 50)  -- Collapsed size
    local tween = TweenService:Create(Frame, TweenInfo.new(0.5), {Size = goalSize})
    tween:Play()
    
    tween.Completed:Connect(function()
        ToggleButton.Visible = false
        TextBox.Visible = false
        ExecuteButton.Visible = false
        ClearButton.Visible = false
        ConsoleToggle.Visible = false
        CreditsToggle.Visible = false
        SaveButton.Visible = false
        CloseButton.Visible = false
    end)
end

local function toggleUI()
    if Frame.Size == UDim2.new(0, 50, 0, 50) then
        expandUI()
    else
        collapseUI()
    end
end

ImageButton.MouseButton1Click:Connect(toggleUI)

-- Save Button function
local function saveCode()
    local code = TextBox.Text
    if code and code ~= "" then
        local fileName = "script.json"
        local data = {
            script_name = "script",
            script = code
        }
        writefile(fileName, HttpService:JSONEncode(data))
    end
end

SaveButton.MouseButton1Click:Connect(saveCode)

-- Load saved script into TextBox
local function loadSavedCode()
    local fileName = "script.json"
    if isfile(fileName) then
        local data = HttpService:JSONDecode(readfile(fileName))
        if data.script then
            TextBox.Text = data.script
        end
    end
end

-- Load saved code on startup
loadSavedCode()

-- Close Button function
local function closeUI()
    local tween = TweenService:Create(Frame, TweenInfo.new(0.5), {Size = UDim2.new(0, 50, 0, 50)})
    tween:Play()
    tween.Completed:Connect(function()
        Frame.Visible = false
    end)
end

CloseButton.MouseButton1Click:Connect(closeUI)

-- Console Toggle function
local function toggleConsole()
    ConsoleTextBox.Visible = not ConsoleTextBox.Visible
end

ConsoleToggle.MouseButton1Click:Connect(toggleConsole)

-- Credits Toggle function
local function toggleCredits()
    CreditsTextBox.Visible = not CreditsTextBox.Visible
end

CreditsToggle.MouseButton1Click:Connect(toggleCredits)

-- Clear Button function
ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Execute Button function
ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    if code and code ~= "" then
        loadstring(code)()
    end
end)

-- Dragging functionality
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

local function onInputBegan(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end

local function onInputChanged(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        update(input)
    end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputChanged:Connect(onInputChanged)
