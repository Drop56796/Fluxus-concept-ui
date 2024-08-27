local CoreGui = game:GetService("CoreGui")
local LogService = game:GetService("LogService"l
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ToggleButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")

-- Create Console UI Elements
local ConsoleToggle = Instance.new("TextButton")
local ConsoleTextBox = Instance.new("TextBox")

-- Set the name of ScreenGui to FluxusAndroidUI
ScreenGui.Name = "FluxusAndroidUI"
ScreenGui.Parent = CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Set to dark gray
Frame.Size = UDim2.new(0, 750, 0, 700) -- Set size (Width: 750, Height: 700)
Frame.Position = UDim2.new(0.5, -375, 0.5, -350) -- Center the frame

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20) -- Set the corner radius

ImageLabel.Parent = Frame
ImageLabel.Size = UDim2.new(0, 50, 0, 50) -- Set the icon size
ImageLabel.Position = UDim2.new(0, 5, 0, 5) -- Set the icon position
ImageLabel.Image = "rbxassetid://13327193518" -- Replace with your icon's AssetID
ImageLabel.BackgroundTransparency = 1 -- Make the icon background transparent

-- Toggle Button
ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0, 100, 0, 30) -- Size of the toggle button
ToggleButton.Position = UDim2.new(0, 5, 0, 60) -- Position under the ImageLabel
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Set to black
ToggleButton.Text = "Toggle" -- Set the button text
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Set text color to white
ToggleButton.Font = Enum.Font.SourceSans -- Set the font style

-- Apply rounded corners to the Toggle button
local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 10) -- Set the corner radius
ToggleUICorner.Parent = ToggleButton

-- TextBox
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0, 600, 1, -10) -- Match the height of the Frame minus some padding
TextBox.Position = UDim2.new(0, 110, 0, 5) -- Position to the right of the ToggleButton
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Darker gray background
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
TextBox.Font = Enum.Font.Code -- Code style font
TextBox.Text = "Enter code here..." -- Placeholder text
TextBox.TextXAlignment = Enum.TextXAlignment.Left -- Left alignment
TextBox.TextYAlignment = Enum.TextYAlignment.Top -- Top alignment
TextBox.Visible = false -- Initially hidden

-- Execute Button
ExecuteButton.Parent = Frame
ExecuteButton.Size = UDim2.new(0, 100, 0, 30) -- Size of the execute button
ExecuteButton.Position = UDim2.new(0, 110, 1, -35) -- Position below the TextBox
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
ExecuteButton.Text = "Execute" -- Button text
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
ExecuteButton.Font = Enum.Font.SourceSans -- Font style
ExecuteButton.Visible = false -- Initially hidden

-- Apply rounded corners to the Execute button
local ExecuteUICorner = Instance.new("UICorner")
ExecuteUICorner.CornerRadius = UDim.new(0, 10) -- Set the corner radius
ExecuteUICorner.Parent = ExecuteButton

-- Clear Button
ClearButton.Parent = Frame
ClearButton.Size = UDim2.new(0, 100, 0, 30) -- Size of the clear button
ClearButton.Position = UDim2.new(0, 220, 1, -35) -- Position to the right of the ExecuteButton
ClearButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
ClearButton.Text = "Clear" -- Button text
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
ClearButton.Font = Enum.Font.SourceSans -- Font style
ClearButton.Visible = false -- Initially hidden

-- Apply rounded corners to the Clear button
local ClearUICorner = Instance.new("UICorner")
ClearUICorner.CornerRadius = UDim.new(0, 10) -- Set the corner radius
ClearUICorner.Parent = ClearButton

-- Toggle Button Functionality
ToggleButton.MouseButton1Click:Connect(function()
    TextBox.Visible = not TextBox.Visible
    ExecuteButton.Visible = not ExecuteButton.Visible
    ClearButton.Visible = not ClearButton.Visible
end)

-- Clear Button Functionality
ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

-- Execute Button Functionality (Custom Action)
ExecuteButton.MouseButton1Click:Connect(function()
    local code = TextBox.Text
    
    -- Custom action logic here
    print("Executing code:")
    print(code)

    -- Optionally, you can use loadstring to execute Lua code directly
    -- WARNING: Only use this if you're sure about the code's safety and security.
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
