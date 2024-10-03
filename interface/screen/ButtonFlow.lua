local mod_gui = require("mod-gui")
local ButtonFlowFunctions = {}
function ButtonFlowFunctions.createButtonFlow(player)
    local ButtonFlow = mod_gui.get_button_flow(player)
    if ButtonFlow["afkcButton"] == nil then
        ButtonFlow.add{
            type="sprite-button",
            name="afkcButton",
            sprite="item/assembling-machine-3",
            style=mod_gui.button_style,
            tags={
                click="afkc.show.screen_crafting"
            }
        }
    end
end
function ButtonFlowFunctions.recreateButtonFlow(player)
    local ButtonFlow = mod_gui.get_button_flow(player)
    if ButtonFlow["afkcButton"] ~= nil then
        ButtonFlow["afkcButton"].destroy()
    end
    ButtonFlowFunctions.createButtonFlow(player)
end
return ButtonFlowFunctions