local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))() --This Will Load The Script Code
local Player = game.Players.LocalPlayer --This Will Reveal The Player Name
  local Window = OrionLib:MakeWindow({
		Name = "Shizukii key system ",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
        IntroText = "Loading Script..."       
}) --This Will Load The Script Hub

function MakeScriptHub()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/chead-z/Shizukii-hub/main/hub"))() --Put The Script That Will Load If The Key Is Correct Here
end

OrionLib:MakeNotification({
	Name = "Logado!",
	Content = "Você precisa da key "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
}) --Notification

getgenv().Key = "grw076eiwy7" --Put The Correct Key Here
getgenv().KeyInput = "string" --Require For The Key To Work

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) --Making A Tab

Tab:AddTextbox({
	Name = "Key",
	Default = "Enter Key.",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyInput = Value
	end	  
}) --You Will Enter The Key Here

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if getgenv().KeyInput == getgenv().Key then
            OrionLib:MakeNotification({
                Name = "Verificando Key",
                Content = "Verificando a key que você digitou",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Key correta!",
                Content = "A Key que você digitou está Correta.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:Destroy()
            wait(.3)
            MakeScriptHub()
        else
           OrionLib:MakeNotification({
                Name = "Verificando Key",
                Content = "Verificando a key que você digitou",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Key Incorreta!",
                Content = "A Key que você digitou está incorreta."
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
}) --This Will Check The Key You Entered

Tab:AddButton({
	Name = "Get Key",
	Callback = function()
      		setclipboard("https://discord.gg/yuaN9bG8Mm") --This Will Copy The Link Of The Key
  	end    
}) 
    
OrionLib:Init() --Require If The Script Is Done
