local coinValue = 1 -- Valor da moeda a ser adicionado ao coletar

function onTouch(other)
    local player = game.Players:GetPlayerFromCharacter(other.Parent)
    if player then
        -- Adiciona o valor da moeda à contagem total do jogador
        player.leaderstats.Coins.Value = player.leaderstats.Coins.Value + coinValue
        -- Destruir a moeda após ser coletada
        script.Parent:Destroy()
    end
end

script.Parent.Touched:Connect(onTouch)



----


game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    
    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = 0
    
    coins.Parent = leaderstats
    leaderstats.Parent = player
end)
