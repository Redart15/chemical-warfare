local gasmask_icon = data.raw["technology"]["stone-wall"].icon

data:extend(
    {
        {
            type = "technology",
            name = "gasmask",
            icon = gasmask_icon, -- need an actual icon for this
            icon_size = 256,
            icon_mipmaps = 1,
            prerequisites = {"advanced-electronics"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "gasmask"
                }
            },
            unit = {
                count = 30,
                ingredients = {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                },
                time = 10
            },
        },
    }
)