local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- Create UI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local SettingsButton = Instance.new("TextButton")
local SettingsFrame = Instance.new("Frame")
local CodeEditedToggleButton = Instance.new("TextButton")
local CodeEditedText = Instance.new("TextLabel")
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
Frame.Size = UDim2.new(0, 50, 0, 50)  -- Initial collapsed size
Frame.Position = UDim2.new(1, -55, 0, 5)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

-- ImageButton setup
ImageButton.Parent = Frame
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Position = UDim2.new(0, 0, 0, 0)
ImageButton.Image = "rbxassetid://13327193518"  -- Replace with your AssetID
ImageButton.BackgroundTransparency = 1

-- Settings Button setup
SettingsButton.Parent = Frame
SettingsButton.Size = UDim2.new(0, 50, 0, 50)
SettingsButton.Position = UDim2.new(0, 50, 0, 0)
SettingsButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SettingsButton.Text = "⚙️" -- Icon for settings
SettingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsButton.Font = Enum.Font.SourceSans
SettingsButton.Visible = false

local SettingsUICorner = Instance.new("UICorner")
SettingsUICorner.CornerRadius = UDim.new(0, 15)
SettingsUICorner.Parent = SettingsButton

-- Settings Frame setup
SettingsFrame.Parent = Frame
SettingsFrame.Size = UDim2.new(0, 200, 0, 150)
SettingsFrame.Position = UDim2.new(0, 105, 0, 60)
SettingsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SettingsFrame.Visible = false

local SettingsFrameUICorner = Instance.new("UICorner")
SettingsFrameUICorner.CornerRadius = UDim.new(0, 10)
SettingsFrameUICorner.Parent = SettingsFrame

-- Code Edited Toggle Button setup
CodeEditedToggleButton.Parent = SettingsFrame
CodeEditedToggleButton.Size = UDim2.new(0, 30, 0, 30)
CodeEditedToggleButton.Position = UDim2.new(0, 10, 0, 10)
CodeEditedToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CodeEditedToggleButton.Text = "🔲"
CodeEditedToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeEditedToggleButton.Font = Enum.Font.SourceSans
CodeEditedToggleButton.TextSize = 20

local CodeEditedToggleUICorner = Instance.new("UICorner")
CodeEditedToggleUICorner.CornerRadius = UDim.new(0, 5)
CodeEditedToggleUICorner.Parent = CodeEditedToggleButton

-- Code Edited Text setup
CodeEditedText.Parent = SettingsFrame
CodeEditedText.Size = UDim2.new(0, 150, 0, 30)
CodeEditedText.Position = UDim2.new(0, 50, 0, 10)
CodeEditedText.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CodeEditedText.Text = "Show Code Edited"
CodeEditedText.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeEditedText.Font = Enum.Font.SourceSans
CodeEditedText.TextSize = 20

-- TextBox setup
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0, 600, 1, -10)
TextBox.Position = UDim2.new(0, 160, 0, 5)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Code
TextBox.Text = "Enter code here..."
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.Visible = false
TextBox.MultiLine = true
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false

-- Execute Button setup
ExecuteButton.Parent = Frame
ExecuteButton.Size = UDim2.new(0, 100, 0, 30)
ExecuteButton.Position = UDim2.new(0, 160, 1, -35)
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
ClearButton.Position = UDim2.new(0, 270, 1, -35)
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

-- Function to animate UI
local function expandUI()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 750, 0, 700), Position = UDim2.new(0.5, -375, 0.5, -350)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()

    -- Show other UI elements
    tween.Completed:Connect(function()
        ImageButton.Visible = false
        TextBox.Visible = true
        ExecuteButton.Visible = true
        ClearButton.Visible = true
        ConsoleToggle.Visible = true
        ConsoleTextBox.Visible = true
        CloseButton.Visible = true
        SettingsButton.Visible = true
    end)
end

local function collapseUI()
    -- Collapse to original size
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 50, 0, 50), Position = UDim2.new(1, -55, 0, 5)}
    local tween = TweenService:Create(Frame, tweenInfo, goal)
    tween:Play()

    -- Hide other UI elements
    tween.Completed:Connect(function()
        ImageButton.Visible = true
        TextBox.Visible = false
        ExecuteButton.Visible = false
        ClearButton.Visible = false
        ConsoleToggle.Visible = false
        ConsoleTextBox.Visible = false
        CloseButton.Visible = false
        SettingsButton.Visible = false
        SettingsFrame.Visible = false
    end)
end

-- Toggle Settings Frame visibility
local function toggleSettingsFrame()
    SettingsFrame.Visible = not SettingsFrame.Visible
end

-- Toggle Code Edited TextBox visibility
local function toggleCodeEdited()
    TextBox.Visible = not TextBox.Visible
end

-- Toggle Console TextBox visibility
local function toggleConsole()
    ConsoleTextBox.Visible = not ConsoleTextBox.Visible
end

-- Infinite scrolling effect for ConsoleTextBox
local function setupInfiniteScrolling()
    local scrollSpeed = 20  -- Adjust scroll speed as needed
    local function scroll()
        while true do
            wait(0.05)  -- Delay between scrolls
            ConsoleTextBox.CanvasPosition = Vector2.new(0, ConsoleTextBox.CanvasPosition.Y + scrollSpeed)
            if ConsoleTextBox.CanvasPosition.Y >= ConsoleTextBox.CanvasSize.Y.Offset then
                ConsoleTextBox.CanvasPosition = Vector2.new(0, 0)
            end
        end
    end
    spawn(scroll)
end

setupInfiniteScrolling()

-- Connect functions to buttons
ImageButton.MouseButton1Click:Connect(expandUI)
CloseButton.MouseButton1Click:Connect(collapseUI)
SettingsButton.MouseButton1Click:Connect(toggleSettingsFrame)
CodeEditedToggleButton.MouseButton1Click:Connect(toggleCodeEdited)
ConsoleToggle.MouseButton1Click:Connect(toggleConsole)

-- Code Execution
local function printToConsole(text)
    ConsoleTextBox.Text = ConsoleTextBox.Text .. "\n" .. text
end

ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    local success, result = pcall(function()
        return loadstring(code)()
    end)
    if success then
        printToConsole("Executed: " .. code)
        if result then
            printToConsole("Result: " .. tostring(result))
        end
    else
        printToConsole("Error: " .. tostring(result))
    end
end)

ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Automatically expand UI on script run
expandUI()
