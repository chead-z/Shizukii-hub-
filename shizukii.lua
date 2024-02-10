-- Script: Shizukii Hub

-- Variáveis
local sessions = {
    {title = "Games", color = Color3.fromRGB(255, 0, 0)},
    {title = "Infinite Yield", color = Color3.fromRGB(0, 255, 0)},
    {title = "Shizukii Discord", color = Color3.fromRGB(0, 0, 255)}
}
local selectedSession = 1

-- Funções
function drawSession(session, index)
    local x, y = 100, 100 + 50 * index
    drawBox(x, y, 200, 40, session.color)
    drawText(x + 100, y + 20, session.title, Color3.white)
end

function onSessionSelect(index)
    selectedSession = index
end

-- Interface
drawBackground(Color3.fromRGB(40, 40, 40))

for i, session in ipairs(sessions) do
    drawSession(session, i)
end

-- Animações
tween(selectedSession, function(t)
    drawSession(sessions[selectedSession], t)
end, 0.5)

-- Integração com Hub
hub:RegisterSession("Shizukii Hub", onSessionSelect)
