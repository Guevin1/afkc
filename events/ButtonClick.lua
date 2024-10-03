script.on_event(defines.events.on_gui_click,function (event)
    local player = game.players[event.player_index]
    local buttonName = event.element.name
    ---@type table<string, string>
    local tags = event.element.tags
    local action = {}
    if tags["click"] ~= nil then
        
        local tagsElement = tags["click"]
        for value in tagsElement:gmatch("[^.]+") do
            table.insert(action,value)
        end
    end
    log(action)
end)