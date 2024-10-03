local InterfaceControl = require("interface.InterfaceControl")
local CommandControl = require("commands.CommandControl")
local EventControl = require("events.EventControl")
function initMod()

    log("start")
    for _, player in pairs(game.players) do

        InterfaceControl.setup(player)
    end
end


script.on_event(defines.events.on_player_created, initMod)
script.on_init(initMod)