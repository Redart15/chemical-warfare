-- adds resistance to poison
local list_armor = {"light-armor", "heavy-armor", "modular-armor", "power-armor", "power-armor-mk2"}

for index, value in ipairs(list_armor) do
    local poison =  {type = "poison", percent = 10 * (index - 1), decrease = (index - 1) * index }
    table.insert(data.raw["armor"][value]["resistances"],poison) 
end

-- modifies recipe
data.raw["recipe"]["light-armor"]["ingredients"] = {{"iron-plate",45}}
data.raw["recipe"]["heavy-armor"]["ingredients"] = {{"copper-plate",120},{"steel-plate",50}}

local elementsToSkip = 2
for i = elementsToSkip + 1, #list_armor do
    table.insert(data.raw["recipe"][list_armor[i]]["ingredients"],{"gasmask",1})
end

-- modifies technology


