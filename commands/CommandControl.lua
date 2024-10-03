
local CommandsAlias = {
    "reloadIcon"
} 
local CommandsFunction = {}

function CommandsFunction.setup()
    for _, value in pairs(CommandsAlias) do
        log(value)
        commands.add_command(value,nil,require(value))
    end
end
CommandsFunction.setup()
return CommandsFunction