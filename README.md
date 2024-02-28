# coin-collection-system-in-.lua
coin collection system in .lua   / sistema de coletar moedas para o seu jogo em .lua

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

Certifique-se de que os jogadores têm um objeto "leaderstats" dentro de seu personagem. Você pode adicionar este objeto em um script no servidor ou em um script local no jogador.
Exemplo de como criar um objeto "leaderstats" para os jogadores:


game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    
    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = 0
    
    coins.Parent = leaderstats
    leaderstats.Parent = player
end)



Claro, vou fornecer um exemplo simples de como você pode implementar um sistema de coleta de moedas em Lua para o seu jogo no Roblox usando o Roblox Studio. Neste exemplo, as moedas serão representadas por partes (Model) no jogo, e um script irá detectar quando o jogador tocar em uma moeda, adicionando-a à sua contagem total de moedas coletadas.

1. No Roblox Studio, crie um novo modelo (Model) para representar uma moeda. Você pode projetar a moeda como preferir.

2. Nomeie o modelo da moeda como "Moeda".

3. Adicione um script dentro do modelo "Moeda". Este script será responsável por detectar quando o jogador tocar na moeda e adicionar a moeda à sua contagem total.

Script dentro do modelo "Moeda":

```lua
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
```

4. Certifique-se de que os jogadores têm um objeto "leaderstats" dentro de seu personagem. Você pode adicionar este objeto em um script no servidor ou em um script local no jogador.

Exemplo de como criar um objeto "leaderstats" para os jogadores:

```lua
game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    
    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = 0
    
    coins.Parent = leaderstats
    leaderstats.Parent = player
end)
```

Com isso, quando um jogador tocar em uma moeda no jogo, a moeda será destruída e o valor da moeda será adicionado à contagem total de moedas do jogador. Certifique-se de ajustar o valor da moeda (coinValue) conforme necessário.
