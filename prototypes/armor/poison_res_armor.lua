-- adds poison resistance to armor using gasmasks
local pra_list_armor = {"power-armor", "power-armor-mk2"}
local pra_init_decrease = 4
local pra_init_resist = 30

for index, value in ipairs(pra_list_armor) do
    local poison =  {type = "poison", percent = pra_init_resist * index, decrease = pra_init_decrease * index}
    table.insert(data.raw["armor"][value]["resistances"],poison) 
    table.insert(data.raw["recipe"][value]["ingredients"],{"gasmask",1})
end



