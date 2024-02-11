local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))() --This Will Load The Script Code
local Player = game.Players.LocalPlayer --This Will Reveal The Player Name
  local Window = OrionLib:MakeWindow({
		Name = "EXAMPLE HOW TO MAKE A KEY SYSTEM FOR MOBILE",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
        IntroText = "Loading Script..."       
}) --This Will Load The Script Hub

function MakeScriptHub()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/chead-z/Shizukii-hub/main/hub"))(); --Put The Script That Will Load If The Key Is Correct Here
end

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "You need key "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
}) --Notification

getgenv().Key = "chead" --Put The Correct Key Here
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
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Correct Key!",
                Content = "The key you entered is Correct.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:Destroy()
            wait(.3)
            MakeScriptHub()
        else
           OrionLib:MakeNotification({
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Incorrect Key!",
                Content = "The key you entered is incorrect.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
}) --This Will Check The Key You Entered

Tab:AddButton({
	Name = "get Key",
	Callback = function()
      		setclipboard("https://discord.gg/yuaN9bG8Mm") --This Will Copy The Link Of The Key
  	end    
}) 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
 
--hub
 
local Window = OrionLib:MakeWindow({Name = "Shizukii Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Shizukii Test"})
 
--notifer user
 
OrionLib:MakeNotification({
	Name = "Shizukii",
	Content = "Obrigado por usar Shizukii Hub<3",
	Image = "rbxassetid://4483345998",
	Time = 5
})
 
--tabs
 
local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
--"section"
 
local Section = Tab:AddSection({
	Name = "Universal script"
})
 
 
--button
 
Tab:AddButton({
	Name = "Shiftlock",
	Callback = function(exec)
      		print(loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))())
  	end    
})
 
Tab:AddButton({
	Name = "Infinite yield",
	Callback = function(exec)
      		print(loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))())
  	end    
})
 
--section
 
local Section = Tab:AddSection({
	Name = "anime fighters simulator"
})
 
Tab:AddButton({
	Name = "yutv hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/Binintrozza/yutv2e/main/afss"))())
  	end    
})
--section
 
local Section = Tab:AddSection({
	Name = "Blox Fruits"
})
 
Tab:AddButton({
	Name = "Domadic Hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/Domadicoof/Domadicoof/main/Domadichub/NottoGay/Start.ranscript"))())
  	end    
})
 
Tab:AddButton({
	Name = "Miojo Hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/sumidassz/miojoHub/main/hub.lua", true))())
  	end    
})
 
Tab:AddButton({
	Name = "Vector hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua"))())
  	end    
})
 
-- section
 
local Section = Tab:AddSection({
	Name = "Muder Mystery 2"
})
 
Tab:AddButton({
	Name = "Dark Cheat Client",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/loader.lua", true))())
  	end    
})
 
Tab:AddButton({
	Name = "Lunar Hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/Next1x/LunarHub/main/Bypassed", true))())
  	end    
})
 
Tab:AddButton({
	Name = "Eclipse Hub (apenas no fluxus)",
	Callback = function(exec)
      		print(loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))())
  	end    
})
 
local Section = Tab:AddSection({
	Name = "Blade Ball"
})
 
Tab:AddButton({
	Name = "Bedol Hub",
	Callback = function(exec)
      		print(loadstring(game:HttpGet('https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Blade_Ball.lua'))())
  	end    
})
 
local Section = Tab:AddSection({
	Name = "Mais Scripts em Breve!!"
})
 
local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
Tab:AddSlider({
	Name = "Velocidade",
	Min = 16,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
	      		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
 
Tab:AddSlider({
	Name = "Poder do Puko",
	Min = 16,
	Max = 300,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "jump",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
 
local PlayerTab Window: MakeTab({
        Name "Créditos",
        Icon "rbxassetid://4483345998",
        PremiumOnly = false
})
 
local Section = Tab:AddSection({
	Name = "Qualquer Dúvida entre em contato no servidor ou entre em contato com: chead.y!!"
})
