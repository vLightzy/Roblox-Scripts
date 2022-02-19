-- I DID NOT MAKE THIS SCRIPT. 

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Dunking Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
 
SelectedArea = "3 Point Line"
Areas = {"3 Point Line","Half Court","Tp Full Court","Way To Far"}
yes = false
yes1 = false
 
b:Toggle("AutoShot",function(bool)
    shared.toggle = bool
    AutoShot = bool
end)
 
b:Dropdown("Select Area",Areas,true,function(a)
    SelectedArea = a
end)
 
e:Toggle("Delete Players",function(bool)
    shared.toggle = bool
    DeletePlayers = bool
end)
 
e:Button("100% score",function()
    yes = true
    yes1 = true
end)
 
e:Button("Tp 3 Point Line",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168.133926, 19.7625332, 840.685913, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
 
e:Button("Tp Half Court",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206.139404, 19.7625332, 842.111145, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
 
e:Button("Tp Full Court",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-266.130798, 19.6107388, 842.830017, -0.00619360665, -7.15092909e-08, -0.999980807, -1.93559613e-09, 1, -7.14986754e-08, 0.999980807, 1.49272439e-09, -0.00619360665)
end)
 
e:Button("Tp Way To Far",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-306.741547, 19.8428078, 844.152893, -0.00238843169, -5.5634068e-08, -0.999997139, 3.07797734e-08, 1, -5.57077406e-08, 0.999997139, -3.09127373e-08, -0.00238843169)
end)
 
--Credits
u:Label("Youtube Subs: "..getgenv().Subscribers,{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69)
})
 
u:Label("Discord Members: "..getgenv().TotalMembers,{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69)
})
 
u:Label("Pastebin Views: "..getgenv().TotalPastebinViews,{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69)
})
 
u:Button("Discord Server",function()
    setclipboard(getgenv().Discord)
end)
 
u:Button("Youtube Channel",function()
    setclipboard(getgenv().Youtube)
end)
 
u:Button("Pastebin Page",function()
    setclipboard(getgenv().Pastebin)
end)
 
u:Button(getgenv().Username,function()
    setclipboard(getgenv().Username)
end)
 
spawn(function()
    while wait() do
        if DeletePlayers == true then
            for i,v in pairs(game.Players:GetChildren()) do
                if game.Workspace:FindFirstChild(v.Name) then
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        game.Workspace[v.Name]:Destroy()
                    end
                end
            end
        end
    end
end)
 
spawn(function()
    while wait() do
        if yes == true then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
            wait(.2)
            repeat
                wait()
                if game:GetService("Players").LocalPlayer.PlayerGui.Slider.Frame.Slider.AbsolutePosition.X >= 950 then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Slider.Frame.Slider.AbsolutePosition.X >= 955 then
                        keyrelease(0x45)
                        yes = false
                    end
                end
            until yes == false
        end
    end
end)
 
spawn(function()
    while wait() do
        if AutoShot == true then
            for i,v in pairs(game.Players:GetChildren()) do
                if game.Workspace:FindFirstChild(v.Name) then
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        game.Workspace[v.Name]:Destroy()
                    end
                end
            end
            yes = true
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
            wait(.2)
            repeat
                wait()
                if game:GetService("Players").LocalPlayer.PlayerGui.Slider.Frame.Slider.AbsolutePosition.X >= 950 then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Slider.Frame.Slider.AbsolutePosition.X >= 955 then
                        keyrelease(0x45)
                        yes = false
                    end
                end
            until yes == false
            wait(5)
            if SelectedArea == "3 Point Line" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168.133926, 19.7625332, 840.685913, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            end
            if SelectedArea == "Half Court" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206.139404, 19.7625332, 842.111145, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            end
            if SelectedArea == "Tp Full Court" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-266.130798, 19.6107388, 842.830017, -0.00619360665, -7.15092909e-08, -0.999980807, -1.93559613e-09, 1, -7.14986754e-08, 0.999980807, 1.49272439e-09, -0.00619360665)
            end
            if SelectedArea == "Way To Far" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-306.741547, 19.8428078, 844.152893, -0.00238843169, -5.5634068e-08, -0.999997139, 3.07797734e-08, 1, -5.57077406e-08, 0.999997139, -3.09127373e-08, -0.00238843169)
            end
        end
    end
end)
