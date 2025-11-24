return function()
local ts = game:GetService("TweenService")
local gui = {}
local plr = game.Players.LocalPlayer
local theshadowrealm = game.Workspace
local function hasProperty(obj,property)
	return pcall(function()
		return obj[property]
	end)

end
local exti = Instance.new("ScreenGui")
exti.Parent = plr.PlayerGui
exti.ResetOnSpawn = false

local loading = Instance.new("Frame", exti)
loading.BackgroundColor3 = Color3.fromRGB(12,20,21)
loading.Position = UDim2.new(0.362,0,0.392,0)
loading.Size = UDim2.new(0.275,0,0.216,0)
Instance.new("UICorner", loading).CornerRadius = UDim.new(0,8)
local loadingtext = Instance.new("TextLabel", loading)
loadingtext.BackgroundTransparency = 1
loadingtext.Position = UDim2.new(0,0,0.319,0)
loadingtext.Size = UDim2.new(1,0,0.362,0)
loading.Visible = true

local mainframe = Instance.new("Frame")
mainframe.Parent = exti
mainframe.BackgroundColor3 = Color3.fromRGB(12,20,31)
mainframe.Position = UDim2.new(0.33,0,0.295,0)
mainframe.Size = UDim2.new(0.339,0,0.408,0)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Visible = false
local mainframeuic = Instance.new("UICorner")
mainframeuic.Parent = mainframe
mainframeuic.CornerRadius = UDim.new(0,12)

local mainframetop = Instance.new("Frame")
mainframetop.Parent = mainframe
mainframetop.Position = UDim2.new(0,0,0,0)
mainframetop.Size = UDim2.new(1,0,0.106,0)
mainframetop.BackgroundColor3 = Color3.fromRGB(12,20,31)
Instance.new("UICorner", mainframetop).CornerRadius = UDim.new(0,12)

local closebtn = Instance.new("TextButton")
closebtn.Parent = mainframe
closebtn.BackgroundTransparency = 1
closebtn.Position = UDim2.new(0.933,0,0.012,0)
closebtn.Size = UDim2.new(0.052,0,0.079,0)
closebtn.TextColor3 = Color3.fromRGB(255,255,255)
closebtn.Text = "X"
closebtn.TextScaled = true
closebtn.FontFace = Font.new("rbxasset://fonts/families/Arimo.json")

local minimizebtn = Instance.new("TextButton")
minimizebtn.Parent = mainframe
minimizebtn.Size = closebtn.Size
minimizebtn.Position = UDim2.new(0.86,0,0.012,0)
minimizebtn.Text = "━" -- unicode horizontal bar heavy
minimizebtn.TextScaled = true
minimizebtn.TextColor3 = Color3.fromRGB(255,255,255)
minimizebtn.FontFace = closebtn.FontFace
minimizebtn.BackgroundTransparency = 1


local mainframetopuic = Instance.new("UICorner")
mainframetopuic.Parent = mainframetop
mainframetopuic.CornerRadius = UDim.new(0,12)

local title = Instance.new("TextLabel")
title.FontFace = Font.new("rbxasset://fonts/families/Titillium Web.json")
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.025,0,0,0)
title.Parent = mainframe
title.Size = UDim2.new(0.835,0,0.106,0)
title.TextScaled = true
title.Text = "exti hub"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextXAlignment = Enum.TextXAlignment.Left

local minimdmain = Instance.new("Frame")
minimdmain.Parent = exti
minimdmain.BackgroundColor3 = Color3.fromRGB(12,20,31)
minimdmain.Position = UDim2.new(0.33,0,0.295,0)
minimdmain.Size = UDim2.new(0.339,0,0.043,0)
Instance.new("UICorner",minimdmain).CornerRadius = UDim.new(0,12)
minimdmain.Visible = false
minimdmain.Active = true
minimdmain.Draggable = true

local minimdtitle = title:Clone()
minimdtitle.Parent = minimdmain
minimdtitle.Position = UDim2.new(0.025,0,-0.041,0)
minimdtitle.Size = UDim2.new(0.644,0,1.004,0)

local minimdclose = closebtn:Clone()
minimdclose.Parent = minimdmain
minimdclose.Position = UDim2.new(0.93,0,0.086,0)
minimdclose.Size = UDim2.new(0.052,0,0.766,0)

local minimdminimize = minimizebtn:Clone()
minimdminimize.Parent = minimdmain
minimdminimize.Position = UDim2.new(0.86,0,0.086,0)
minimdminimize.Size = UDim2.new(0.052,0,0.766,0)

minimdminimize.MouseButton1Click:Connect(function()
	minimdmain.Visible = false
	mainframe.Position = minimdmain.Position
	mainframe.Visible = true
end)
minimizebtn.MouseButton1Click:Connect(function()
	mainframe.Visible = false
	minimdmain.Position = mainframe.Position
	minimdmain.Visible = true
end)

local closedialogue = Instance.new("Frame")
closedialogue.BackgroundColor3 = Color3.fromRGB(26,43,66)
closedialogue.Parent = exti
closedialogue.Position = UDim2.new(0.411,0,0.387,0)
closedialogue.Size = UDim2.new(0.177,0,0.222,0)
Instance.new("UICorner",closedialogue).CornerRadius = UDim.new(0,12)
closedialogue.Visible = false

local yesbtn = Instance.new("TextButton")
yesbtn.BackgroundColor3 = Color3.fromRGB(53,53,53)

yesbtn.Position = UDim2.new(0.08,0,0.704,0)
yesbtn.Size = UDim2.new(0.385,0,0.211,0)
Instance.new("UICorner", yesbtn).CornerRadius = UDim.new(0,6)
yesbtn.Text = "Yes"
yesbtn.Parent = closedialogue
yesbtn.TextScaled = true
yesbtn.TextColor3 = Color3.fromRGB(255,255,255)
yesbtn.FontFace = Font.new("rbxasset://fonts/families/Nunito.json")

local nobtn = yesbtn:Clone()
nobtn.Parent = closedialogue
nobtn.Text = "No"
nobtn.Position = UDim2.new(0.522,0,0.704,0)

local closetext = Instance.new("TextLabel", closedialogue)
closetext.BackgroundTransparency = 1
closetext.Position = UDim2.new(0.08,0,0.099,0)
closetext.Size = UDim2.new(0.823,0,0.607,0)
closetext.TextColor3 = Color3.fromRGB(255,255,255)
closetext.Text = "Are you sure you want to unload the interface?"
closetext.TextScaled = true

closebtn.MouseButton1Click:Connect(function()
	closedialogue.Visible = true
end)
minimdclose.MouseButton1Click:Connect(function()
	closedialogue.Visible = true
end)
yesbtn.MouseButton1Click:Connect(function()
	exti:Destroy()
end)
nobtn.MouseButton1Click:Connect(function()
	closedialogue.Visible = false
end)

local tabselector = Instance.new("ScrollingFrame")
tabselector.Parent = mainframe
tabselector.BackgroundColor3 = Color3.fromRGB(27,45,47)
tabselector.BackgroundTransparency = 0.5
tabselector.Position = UDim2.new(0.025,0,0.106,0)
tabselector.Size = UDim2.new(0.214,0,0.859,0)
Instance.new("UICorner",tabselector).CornerRadius = UDim.new(0,8)
local tabselectorull = Instance.new("UIListLayout", tabselector)
tabselectorull.Padding = UDim.new(0,4)
tabselectorull.FillDirection = Enum.FillDirection.Vertical
tabselectorull.VerticalAlignment = Enum.VerticalAlignment.Top
tabselectorull.SortOrder = Enum.SortOrder.LayoutOrder
tabselector.ScrollBarThickness = 2
tabselector.ScrollBarImageColor3 = Color3.fromRGB(102,102,102)

tabselectorull:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    tabselector.CanvasSize = UDim2.new(0,0,0,tabselectorull.AbsoluteContentSize.Y)
end)

local tabs = Instance.new("Frame", mainframe)
tabs.BackgroundTransparency = 1
tabs.Position = UDim2.new(0.283,0,0.106,0)
tabs.Size = UDim2.new(0.679,0,0.858,0)
Instance.new("UICorner",tabs).CornerRadius = UDim.new(0,8)


gui.Title = title
gui.MainFrame = mainframe
gui.Gui = exti
gui.LoadingScreen = loading
gui.Tabs = tabs

function gui:SetTitle(str)
	self.Title.Text = str
	minimdtitle.Text = str
end

function gui:FinishLoading()
	self.LoadingScreen:Destroy()
	self.MainFrame.Visible = true
end

function gui:CreateTab(name, order)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Text = name
	btn.Parent = tabselector
	btn.BackgroundTransparency = 0.9
	btn.Size = UDim2.new(1,0,0.2,0)
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Light)
	btn.TextScaled = true
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)
	btn.LayoutOrder = order or 1

	local tab = Instance.new("ScrollingFrame", self.Tabs)
	tab.Name = name
	tab.BackgroundTransparency = 0.9
	tab.Position = UDim2.new(0,0,0,0)
	tab.Size = UDim2.new(1,0,1,0)
	Instance.new("UICorner", tab).CornerRadius = UDim.new(0,8)
	tab.Visible = false
	tab.ScrollBarThickness = 3
	tab.ScrollBarImageColor3 = Color3.fromRGB(102,102,102)
	local tabull = Instance.new("UIListLayout", tab)
	tabull.Padding = UDim.new(0,4)
	tabull.FillDirection = Enum.FillDirection.Vertical
	tabull.SortOrder = Enum.SortOrder.LayoutOrder
	tabull.HorizontalAlignment = Enum.HorizontalAlignment.Left
	tabull.VerticalAlignment = Enum.VerticalAlignment.Top
	tabull:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    	tab.CanvasSize = UDim2.new(0, 0, 0, tabull.AbsoluteContentSize.Y)
	end)

	

	btn.MouseButton1Click:Connect(function()
		for _,v in pairs(self.Tabs:GetChildren()) do
			if v:IsA("ScrollingFrame") then v.Visible = false end
		end
		tab.Visible = true
	end)
	return tab
end
function gui:CreateButton(tab, typ, name, desc, order, func1, func2)
	local btnf = Instance.new("Frame")
	btnf.Parent = tab
	btnf.LayoutOrder = order
	btnf.BackgroundColor3 = Color3.fromRGB(125,125,125)
	btnf.BackgroundTransparency = 0.8
	btnf.Size = UDim2.new(1,0,0.1,0)
	Instance.new("UICorner",btnf).CornerRadius = UDim.new(0,8)

	local namelabel = Instance.new("TextLabel",btnf)
	namelabel.BackgroundTransparency = 1
	namelabel.Position = UDim2.new(0,0,0,0)
	namelabel.Size = UDim2.new(0.352,0,1,0)
	namelabel.Text = name
	namelabel.TextScaled = true
	namelabel.TextColor3 = Color3.fromRGB(255,255,255)
	namelabel.FontFace = Font.new("rbxasset://fonts/families/Arimo.json")

	local desclabel = namelabel:Clone()
	desclabel.Parent = btnf
	desclabel.Text = desc
	desclabel.TextColor3 = Color3.fromRGB(153,153,153)
	desclabel.Position = UDim2.new(0.352,0,0,0)
	desclabel.Size = UDim2.new(0.327,0,1,0)

	local btn
	btn = Instance.new("TextButton")
	btn.Parent = btnf
	btn.BackgroundColor3 = Color3.fromRGB(36,76,99)
	btn.BackgroundTransparency = 0.5
	btn.Position = UDim2.new(0.678,0,0,0)
	btn.Size = UDim2.new(0.322,0,1,0)
	Instance.new("UICorner",btn).CornerRadius = UDim.new(0,8)
	btn.Text = "OFF"
	btn.TextScaled = true
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	
	if typ == "toggle" then
		local on = false
		btn.MouseButton1Click:Connect(function()
			on = not on
			if on then
				btn.Text = "ON"
				func1()
			else
				btn.Text = "OFF"
				func2()
			end
		end)
	elseif typ == "trigger" then
		btn.Text = "Run"
		btn.MouseButton1Click:Connect(function()
			func1()
		end)
	end
	return btnf
end

function gui:CreateLabel(tab,text,order)
	local tframe = Instance.new("Frame")
	tframe.Parent = tab
	tframe.BackgroundColor3 = Color3.fromRGB(125,125,125)
	tframe.BackgroundTransparency = 0.9
	tframe.LayoutOrder = order
	tframe.Size = UDim2.new(1,0,0.071,0)

	local label = Instance.new("TextLabel")
	label.Parent = tframe
	label.BackgroundTransparency =1
	label.Position = UDim2.new(-0.006,0,0.277,0)
	label.Size = UDim2.new(1,0,0.473,0)
	label.Text = text
	label.TextColor3 = Color3.fromRGB(140,140,140)
	label.TextScaled = true
	label.FontFace = Font.new("rbxasset://fonts/families/Arimo.json")
	return tframe
end

function gui:CreateTextInput(tab,name,desc,order,func)
	local btnf = Instance.new("Frame")
	btnf.Parent = tab
	btnf.LayoutOrder = order
	btnf.BackgroundColor3 = Color3.fromRGB(125,125,125)
	btnf.BackgroundTransparency = 0.8
	btnf.Size = UDim2.new(1,0,0.1,0)
	Instance.new("UICorner",btnf).CornerRadius = UDim.new(0,8)

	local namelabel = Instance.new("TextLabel",btnf)
	namelabel.BackgroundTransparency = 1
	namelabel.Position = UDim2.new(0,0,0,0)
	namelabel.Size = UDim2.new(0.352,0,1,0)
	namelabel.Text = name
	namelabel.TextScaled = true
	namelabel.TextColor3 = Color3.fromRGB(255,255,255)
	namelabel.FontFace = Font.new("rbxasset://fonts/families/Arimo.json")

	local desclabel = namelabel:Clone()
	desclabel.Parent = btnf
	desclabel.Text = desc
	desclabel.TextColor3 = Color3.fromRGB(153,153,153)
	desclabel.Position = UDim2.new(0.352,0,0,0)
	desclabel.Size = UDim2.new(0.327,0,1,0)

	local btn
	btn = Instance.new("TextBox")
	btn.Parent = btnf
	btn.BackgroundColor3 = Color3.fromRGB(25,53,68)
	btn.BackgroundTransparency = 0.5
	btn.Position = UDim2.new(0.678,0,0,0)
	btn.Size = UDim2.new(0.322,0,1,0)
	Instance.new("UICorner",btn).CornerRadius = UDim.new(0,8)
	btn.Text = ""
	btn.TextScaled = true
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.PlaceholderText = "Input"
	btn.PlaceholderColor3 = Color3.fromRGB(120,120,120)
	btn:GetPropertyChangedSignal("Text"):Connect(function()

		func(btn.Text)
	end)
end
local notifTray = Instance.new("Frame", exti)
notifTray.Position = UDim2.new(0.853,0,0,0)
notifTray.Size = UDim2.new(0.147,0,0.702,0)
notifTray.BackgroundTransparency = 1
local notifTrayULL = Instance.new("UIListLayout", notifTray)
notifTrayULL.Padding = UDim.new(0,8)
notifTrayULL.HorizontalAlignment = Enum.HorizontalAlignment.Center
notifTrayULL.VerticalAlignment = Enum.VerticalAlignment.Bottom
notifTrayULL.SortOrder = Enum.SortOrder.Name
local notifCount = 0
function gui:Notify(text, dur)
    local f = Instance.new("Frame", notifTray)
    f.Name = tostring(notifCount+1)
    f.BackgroundColor3 = Color3.fromRGB(12,20,31)
    f.Size = UDim2.new(0.985,0,0.146,0)
    notifCount = notifCount + 1
    local fuic = Instance.new("UICorner", f)
    fuic.CornerRadius = UDim.new(0,8)
    local slidey = f:Clone()
    slidey.Parent = f
    slidey.Position = UDim2.new(0,0,0.967,0)
    slidey.Size = UDim2.new(1,0,0.033,0)
    slidey.BackgroundColor3 = Color3.fromRGB(57,64,124)
    local info = Instance.new("TextLabel", f)
    info.BackgroundTransparency = 1
    info.Position = UDim2.new(0,0,0,0)
    info.Size = UDim2.new(0.225,0,0.512,0)
    info.Text = "ⓘ"
    info.TextScaled = true
    info.TextColor3 = Color3.fromRGB(255,255,255)
	info.TextTransparency = 1
    local t = info:Clone()
    t.Parent = f
    t.Text = text
    t.Position = UDim2.new(0.225,0,0.083,0)
    t.Size = UDim2.new(0.745,0,0.85,0)
    t.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Light,
    Enum.FontStyle.Normal)
    t.TextYAlignment = Enum.TextYAlignment.Top
	t.TextTransparency = 1


    local tween = ts:Create(slidey,TweenInfo.new(dur,Enum.EasingStyle.Linear,Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0.033, 0)})
	local t2info = TweenInfo.new(0.2,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
	ts:Create(f,t2info,{BackgroundTransparency = 0}):Play()
	for _,v in pairs(f:GetDescendants()) do
		if hasProperty(v,"TextTransparency") then
			ts:Create(v,t2info,{TextTransparency = 0}):Play()
		elseif hasProperty(v,"BackgroundTransparency") then
			ts:Create(v,t2info,{BackgroundTransparency = 0}):Play()
		end
	end
    tween:Play()
    tween.Completed:Connect(function()
		ts:Create(f,t2info,{BackgroundTransparency = 1}):Play()
		for _,v in pairs(f:GetDescendants()) do
			if hasProperty(v,"TextTransparency") then
				ts:Create(v,t2info,{TextTransparency = 1}):Play()
			elseif hasProperty(v,"BackgroundTransparency") then
				--ts:Create(v,t2info,{BackgroundTransparency = 1}):Play():Completed:Connect(function() if f then f:Destroy() end)
				local tweenity = ts:Create(v,t2info,{BackgroundTransparency = 1})
				tweenity:Play()
				tweenity.Completed:Connect(function() if f then f:Destroy() end end)
			end
		end
    end)
end
return gui
end
