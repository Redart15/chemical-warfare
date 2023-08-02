-- adds poison resistance to armor using gasmasks
local list_armor = {"power-armor", "power-armor-mk2"}
local init_decrease = 4
local init_resist = 20

for index, value in ipairs(list_armor) do
    local poison =  {type = "poison", percent = init_resist * index, decrease = init_decrease}
    table.insert(data.raw["armor"][value]["resistances"],poison) 
    table.insert(data.raw["recipe"][value]["ingredients"],{"gasmask",1})
end



