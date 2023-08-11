-- -- adds poison resistance to armor using gasmasks
-- local list_armor = { "power-armor", "power-armor-mk2" }
-- local init_decrease = 4
-- local init_resist = 30
-- local ingredient = { "gasmask", 1 }

-- for index, value in ipairs(list_armor) do
--     local poison = {
--         type = "poison",
--         percent = init_resist * index,
--         decrease = init_decrease * index,
--     }
--     table.insert(data.raw["armor"][value]["resistances"], poison)
--     table.insert(data.raw["recipe"][value]["ingredients"], ingredient)
-- end


local hazmat_icon = table.deepcopy(data.raw.armor["power-armor-mk2"].icon)

data:extend(
    {

        {
            type = "armor",
            group = "combat",
            subgroup = "armor",
            order = "faab",
            name = "hazmat-suit-armor",
            stack_size = 1,
            infinite = true,
            resistances = {
                {
                    type = "poison",
                    percent = 80,
                    decrease = 5,
                },
                {
                    type = "acid",
                    percent = 50,
                    decrease = 2,
                },
                {
                    type = "fire",
                    percent = 50,
                    decrease = 2,
                },
                {
                    type = "electric",
                    percent = 80,
                    decrease = 5,
                },
            },
            icons = {
                {
                    icon = hazmat_icon, -- need an actual icon for this
                    tint = { r = 255 / 255, b = 0 / 255, g = 255 / 255, a = 0.6 },
                },
            },
            icon_mipmaps = 4,
            icon_size = 64,
        },
    }
)
