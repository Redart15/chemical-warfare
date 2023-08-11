for _, spawner in pairs(data.raw["unit-spawner"]) do
    table.insert(spawner.flags, "breaths-air")
    -- table.insert(spawner.resistances, { type = "poison", decrease = -2 })
end

for _, unit in pairs(data.raw["unit"]) do
    for index, flags in ipairs(unit.flags) do
        if flags == "breaths-air" then
            table.remove(unit.flags, index)
        end
    end
end
