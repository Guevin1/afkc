local ButtonFlow = require("interface.screen.ButtonFlow")

function init()
    for _, player in pairs(game.players) do
        ButtonFlow.recreateButtonFlow(player)

    end
end
return init